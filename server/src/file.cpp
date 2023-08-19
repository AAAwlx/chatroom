#include "ser.hpp"
#include "public.hpp"
void Server::file_send1(int cfd, Massage m)
{
    string to_id = m.Deserialization("to_id");
    string id = m.Deserialization("ID");
    string filename = m.Deserialization("filename");
    string filesize = m.Deserialization("filesize");
    User u(id, Library);
    string f = to_id + "f";
    Value j;
    if (u.friend_List.isMember(to_id))
    {
        redisReply *reply1 = (redisReply *)redisCommand(Library, "HGET %s %s", f.c_str(), filename.c_str()); // 未处理文件键为发送者id，处理后的文件键为0            cout<<"存入用户文件列表"<<endl;
        freeReplyObject(reply1);
        if (!(reply1->type == REDIS_REPLY_NIL))
        {
            size_t lastDotPos = filename.rfind('.');

            filename.insert(lastDotPos, "1");

            filename += 1;
        }
        try
        {
            int cfd2 = user_cfd.at(to_id); // 接收人在线
            Value j;
            j["ID"] = id;
            Massage m2("sendfilep", j, "0", "0");
            string s3 = m2.Serialization();
            Err::sendMsg(cfd2, s3.c_str(), s3.length());
        }
        catch (const std::out_of_range &e) // 接收人不在线存入
        {
            cout << "接收人不在线" << endl;
        }
        j["return"] = "Suceed";
    }
    else
    {
        j["return"] = "NULL";
    }
    Massage m1(SEND_FILE, j, "0", "0");
    Err::sendMsg(cfd, m1.Serialization().c_str(), m1.Serialization().length());
    if (j["return"] == "NULL")
    {
        return;
    }
    string dir = to_id;
    mkdir(dir.c_str(), 0777);
    string path = to_id + "/" + filename;
    int fd = open(path.c_str(), O_WRONLY | O_CREAT | O_APPEND, 0666);
    if (fd == -1)
    {
        perror("无法加载文件");
        exit(1);
    }
    long ret, retw;
    long sum;
    char sendbuf[BUFSIZ * 8];
    while (true)
    {
        bzero(sendbuf, BUFSIZ * 8);
        if ((ret = read(cfd, sendbuf, BUFSIZ)) > 0)
        {
            retw = write(fd, sendbuf, ret);
            if (retw > 0)
            {
                sum += retw;
            }
            cout << sum << endl;
            if (ret > retw)
            {
                cout << "重设偏移" << endl;
                lseek(fd, sum, SEEK_SET);
            }
            if (sum >= stol(filesize))
            {
                cout << "BREAK" << endl;
                redisReply *reply = (redisReply *)redisCommand(Library, "HSET %s %s %s", f.c_str(), filename.c_str(), filesize.c_str());
                freeReplyObject(reply);
                // cout << "111111111" << endl;
                break;
            }
        }
    }
    Err::Close(fd);
}
void Server::file_send2(int cfd, Massage m)
{
    string to_id = m.Deserialization("to_id");
    string id = m.Deserialization("ID");
    string filename = m.Deserialization("filename");
    string filesize = m.Deserialization("filesize");
    User u(id, Library);
    Group g(to_id, Library);
    Value j;
    string f = to_id + "f";
    if (u.group_List.isMember(to_id))
    {
        j["return"] == "Suceed";
        redisReply *reply1 = (redisReply *)redisCommand(Library, "HGET %s %s", f.c_str(), filename.c_str()); // 未处理文件键为发送者id，处理后的文件键为0
        if (!(reply1->type == REDIS_REPLY_NIL))
        {
            size_t lastDotPos = filename.rfind('.');

            filename.insert(lastDotPos, "1");

            filename += 1;
        }
        Json::Value::Members members = g.member_List.getMemberNames();
        for (const auto &key : members)
        {
            User u1(key, Library);
            if (u1.group_List[to_id].asInt() == 1)
            {
                try
                {
                    int cfd2 = user_cfd.at(to_id); // 群成员在线向发送实时通知
                    Value j;
                    j["ID"] = id;
                    j["groupid"] = to_id;
                    Massage m2("sendfileg", j, "0", "0");
                    string s3 = m2.Serialization();
                    Err::sendMsg(cfd2, s3.c_str(), s3.length());
                }
                catch (const std::out_of_range &e)
                {
                    cout << "接收人不在线" << endl;
                }
            }
        }
    }
    else
    {
        j["return"] = "NULL";
    }
    Massage m1(SEND_FILE, j, "0", "0");
    Err::sendMsg(cfd, m1.Serialization().c_str(), m1.Serialization().length());
    if (j["return"] == "NULL")
    {
        return;
    }
    string dir = to_id;
    mkdir(dir.c_str(), 0777);
    string path = to_id + "/" + filename;
    int fd = open(path.c_str(), O_WRONLY | O_CREAT | O_APPEND, 0666);
    if (fd == -1)
    {
        perror("无法加载文件");
        exit(1);
    }
    long ret, retw;
    long sum;
    char sendbuf[BUFSIZ * 8];
    while (true)
    {
        bzero(sendbuf, BUFSIZ * 8);
        if ((ret = read(cfd, sendbuf, BUFSIZ)) > 0)
        {
            retw = write(fd, sendbuf, ret);
            if (retw > 0)
            {
                sum += retw;
            }
            cout << sum << endl;
            if (ret > retw)
            {
                cout << "重设偏移" << endl;
                lseek(fd, sum, SEEK_SET);
            }
            if (sum >= stol(filesize))
            {
                cout << "BREAK" << endl;
                redisReply *reply = (redisReply *)redisCommand(Library, "HSET %s %s %s", f.c_str(), filename.c_str(), filesize.c_str());
                freeReplyObject(reply);
                // cout << "111111111" << endl;
                break;
            }
        }
    }
    Err::Close(fd);
}
void Server::file_recv(int cfd, Massage m)
{
    string id = m.Deserialization("id");
    string o = m.Deserialization("o");
    Value j;
    string filepath;
    if (o == "g")
    {
        string groupid = m.Deserialization("groupid");
        User u(id,Library);
        if (u.group_List.isMember(groupid))
        {
            redisReply *reply = (redisReply *)redisCommand(Library, "HGETALL %s", (groupid + "f").c_str());
            if (reply != nullptr)
            {
                for (size_t i = 0; i < reply->elements; i += 2)
                {
                    redisReply *keyReply = reply->element[i];
                    redisReply *valueReply = reply->element[i + 1];
                    if (keyReply->type == REDIS_REPLY_STRING && valueReply->type == REDIS_REPLY_STRING)
                    {
                        std::string key = keyReply->str;
                        std::string value = valueReply->str;
                        if (value != "0")
                        {
                            j[key] = value;
                        }
                    }
                }
            }
            freeReplyObject(reply);
            filepath = groupid + "/";
        }
        else
        {
            j["return"] = "nogroup";
        }
    }
    else
    {
        redisReply *reply = (redisReply *)redisCommand(Library, "HGETALL %s", (id + "f").c_str());
        if (reply != nullptr)
        {
            for (size_t i = 0; i < reply->elements; i += 2)
            {
                redisReply *keyReply = reply->element[i];
                redisReply *valueReply = reply->element[i + 1];
                if (keyReply->type == REDIS_REPLY_STRING && valueReply->type == REDIS_REPLY_STRING)
                {
                    std::string key = keyReply->str;
                    std::string value = valueReply->str;
                    if (value != "0")
                    {
                        j[key] = value;
                    }
                }
            }
        }
        filepath = id + "/";
        freeReplyObject(reply);
    }
    Massage m1(RECV_FILE, j, "0", "0");
    string filename,filesize;
    Err::sendMsg(cfd, m1.Serialization().c_str(), m1.Serialization().length()); // 发送文件列表
    if (j["return"] == "nogroup")
    {
        return;
    }
    
    while (1)
    {
        string a = Err::recvMsg(cfd);
        if (a.length() > 0)
        {
            Massage m2(a);
            filename = m2.Deserialization("filename");
            filesize = m2.Deserialization("filesize");
            break;
        }
    }
    filepath+=filename;
    
    // cout << "111111" << endl;
    long filesizel = stol(filesize);
    Value j1;
    j1["return"] = "succeed";
    j1["filesize"] = filesize;
    Massage m3(RECV_FILE, j1, "0", "0");
    string mas1 = m3.Serialization();
    Err::sendMsg(cfd, mas1.c_str(), mas1.length());
    cout << j1["return"].asString() << endl;
    Massage m2("recv_file", j1, "0", "0");
    string msg = m2.Serialization();
    Err::sendMsg(cfd, msg.c_str(), msg.length());
    int fd = open(filepath.c_str(), O_RDONLY);
    off_t offset = 0;
    while (1)
    {
        string a = Err::recvMsg(cfd);
        if (a.length() > 0)
        {
            break;
        }
    }
    cout << "文件传输开始，请耐心等待" << endl;
    ssize_t sent;
    user_cfd.erase(id);
    while (true)
    {
        sent = sendfile(cfd, fd, &offset, filesizel);
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
        // offset += sent;
        cout << "offset:" << offset << endl;
        cout << "filesize:" << filesize << endl;
        cout << "sent:" << sent << endl;
        if (offset >= filesizel)
        {
            cout << "BREAK" << endl;
            break;
        }
    }
    user_cfd[id] = cfd;
    Err::Close(fd);
    cout << "传输完成" << endl;
}
void Server::file_menu(int cfd)
{
    cout << cfd << "已进入文件管理界面" << endl;
    while (1)
    {
        string r;
        r = Err::recvMsg(cfd);
        if (r.length() > 0)
        {
            cout << r << endl;
            Massage m(r);
            std::variant<Json::Value, std::string> result = m.takeMassage("option");
            std::string s = std::get<std::string>(result);
            cout << s << endl;
            if (s == SEND_FILE)
            {
                Server::file_send1(cfd, m);
            }
            else if (s == RECV_FILE)
            {
                Server::file_recv(cfd, m);
            }
            else if (s == "3")
            {
                Server::file_send2(cfd, m);
            }

            else if (s == EXIT)
            {
                break;
            }
        }
    }
}