#include "../include/public.hpp"
#include "../include/clit.hpp"
void Clenit::file_send1(string ID)
{
    string path,option;
    struct stat statbuf;
    cout << "请输入你要传输的文件的路径" << endl;
    cin >> path;
    while (1)
    {
        if (stat(path.c_str(), &statbuf) == -1)
        {
            cout << "无效的路径(继续或输入Q退出)" << endl;
            cin >> path;
            if (path == "Q")
            {
                return;
            }
        }
        else
        {
            break; // 文件路径正确后退出
        }
    }
    int fp = open(path.c_str(), O_RDONLY);
    long filesize = statbuf.st_size;                  // 获取文件长度
    string fliename = (char *)basename(path.c_str()); // 获取文件名
    cout << "请输入你的传输对象的id号" << endl;
    string to_id;
    cin >> to_id;
    while (1)
    {
        if (to_id[0] == '1')
        {
            option = SEND_FILE;
            break;
        }
        else if (to_id[0] == '2')
        {
            option = "3";
            break;
        }
        else
        {
            cout << "发送对象无效" << endl;
        }
    }

    Value j;
    j["filename"] = fliename;
    j["ID"] = ID;
    j["to_id"] = to_id;
    j["filesize"] = to_string(filesize);
    Massage m(option, j, "0", "0");
    Err::sendMsg(cfd, m.Serialization().c_str(), m.Serialization().length());
    std::unique_lock<std::mutex> lock(qmutex);
    queueCondVar.wait(lock, []
                      { return !masqueue.empty(); });
    string s = masqueue.front();
    masqueue.pop();
    qmutex.unlock();
    std::cout << s << endl;
    Massage m1(s);
    string r = m1.Deserialization("return");

    if (r == "NULL")
    {
        cout << "你还未与该对象建立联系" << endl;
        return;
    }
    off_t offset = 0;
    cout << "文件传输开始，请耐心等待" << endl;
    ssize_t sent;
    while (true)
    {
        sent = sendfile(cfd, fp, &offset, filesize);
        if (sent == -1)
        {
            if (errno == EAGAIN || errno == EWOULDBLOCK)
            {
                continue;
            }
            else
            {
                perror("Error sending data");
                break;
            }
        }
        if (offset >= filesize)
        {
            break;
        }
    }
    Err::Close(fp);
    cout << "传输完成" << endl;
}
            

void Clenit::file_recv(string ID)
{
    Value j;
    cout << "进入文件接收界面，请选择接收好友文件（1）接收群文件(2)" << endl;
    while (1)
    {
        string in;
        cin>>in;
        if (in != "1" && in != "2"){
            cout<< "输入不符合规范" <<endl;
        }else if (in == "1"){
            j["o"] = "f";
            break;
        }else if (in == "2")
        {
            cout << "请输入你要查看的群id" << endl;
            string groupid;
            cin >> groupid;
            j["groupid"] = groupid;
            j["o"] = "g";
            break;
        }
    }   
    j["id"] = ID;
    Massage m(RECV_FILE, j, "0", "0");
    Err::sendMsg(cfd, m.Serialization().c_str(), m.Serialization().length()); // 向服务器发送接收文件请求
    std::unique_lock<std::mutex> lock1(qmutex);
    queueCondVar.wait(lock1, []
                      { return !masqueue.empty(); });
    string s = masqueue.front();
    masqueue.pop();
    qmutex.unlock();
    std::cout << s << endl;
    Massage m1(s);
    std::variant<Json::Value, std::string> result = m1.takeMassage("content");
    Value flist = std::get<Json::Value>(result);
    Json::Value::Members members = flist.getMemberNames();
    if (flist.empty())
    {
        cout << "你没有要接收的文件" << endl;
        return;
    }else if(m1.Deserialization("return") == "nogroup"){
        cout<<"你还未加入该群"<<endl;
        return;
    }
    string s1212;
    for (const auto &key : flist.getMemberNames())
    {
        
        std::cout << "文件：" << key << "大小：" << flist[key].asString() << std::endl;
        s1212=key;
    }
    cout<<s1212<<endl;
    cout<<flist.isMember(s1212)<<endl;
    Value j1;
    cout << "请选择你要接收的文件" << endl;
    string name;
    while (1)
    {
        cin >> name;
        if (!flist.isMember(name))
        {

            cout << "文件列表中没有你要接收的文件,请重新输入" << flist.isMember(name) << endl;
        }
        else
        {
            cout << "文件选择成功" << endl;
            break;
        }
    }
    j1["filename"] = name;
    j1["filesize"] = flist[name].asString();
    Massage m2(RECV_FILE, j1, "0", "0");
    Err::sendMsg(cfd, m2.Serialization().c_str(), m2.Serialization().length());
    std::unique_lock<std::mutex> lock2(qmutex);
    queueCondVar.wait(lock2, []
                      { return !masqueue.empty(); });
    string s1 = masqueue.front();
    masqueue.pop();
    qmutex.unlock();
    Massage m3(s1);
    string r = m3.Deserialization("return");
    //cout<<r<endl;
    if (r == "succeed")
    {
        cout << "请输入你要保存文件的路径" << endl;
        string filesize = m3.Deserialization("filesize");
        string path;
        cin >> path;
        path = path + "/" + name;
        int fd;
        while (1)
        {
            fd = open(path.c_str(), O_WRONLY | O_CREAT | O_APPEND, 0666);
            if (fd == -1)
            {
                cout << "无效的路径,请重新选择" << endl;
                cin >> path;
                path += name;
            }
            else
            {
                break;
            }
        }
        Err::sendMsg(cfd, "0qq", sizeof("0qq"));
        long ret, ret2;
        long sum = 0;
        long sum2 = 0;
        qmutex.lock();
        char recvbuf[BUFSIZ * 8];
        long readsize;
        while (true)
        {
            if(stol(filesize) - sum2 < BUFSIZ * 8) {
                readsize = stol(filesize) - sum2;
            }else{
                readsize = BUFSIZ * 8;
            }   
            if ((ret = read(cfd, recvbuf, readsize)) > 0)
            {
                
                if (ret > 0)
                {
                    sum += ret;
                }else if(ret == -1){
                    if (errno == EAGAIN || errno == EWOULDBLOCK)
                    {
                        continue;
                    }
                }
                ret2 = write(fd, recvbuf, ret);
                if (ret2 > 0)
                {
                    sum2 += ret2;
                }
                cout << "filetotal:" << filesize << endl;
                cout << "recivebyte" << ret << endl;
                cout << "Curwrite:" << ret2 << endl;
                cout<<"Curtotal:" << sum2 << endl;
                if (ret > ret2)
                {
                    cout << "重设偏移" << endl;
                    lseek(fd, sum2, SEEK_SET);
                }
                if (sum2 >= stol(filesize))
                {
                    cout << "BREAK" << endl;
                    break;
                }
                bzero(recvbuf, BUFSIZ * 8);
            }
        }
        cout << "OK" << endl;
        masqueue.push("Received");
        qmutex.unlock();
        queueCondVar.notify_one();
    }
}
void Clenit::file_menu(string ID)
{
    string in;
    while (1)
    {
        cout << "+------------------+" << endl;
        cout << "|     ChatRoom     |" << endl;
        cout << "+------------------+" << endl;
        cout << "|                  |" << endl;
        cout << "|    1:发送文件    |" << endl;
        cout << "|    2.文件接收    |" << endl;
        cout << "|    0:退出界面    |" << endl;
        cout << "|                  |" << endl;
        cout << "+------------------+" << endl;
        std::cin >> in;
        system("clear");
        if (in == SEND_FILE)
        {
            file_send1(ID);
        }
        else if (in == RECV_FILE)
        {
            file_recv(ID);
        }
        else if (in == EXIT)
        {
            Clenit::Exit();
            break;
        }
        else
        {
            cout << "您输入的选项不符合规范" << endl;
        }
    }
}