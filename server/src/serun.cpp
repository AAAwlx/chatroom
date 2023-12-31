#include "ser.hpp"
#include "public.hpp"
Server::~Server()
{
    for (auto cfd : fd_arr) // 迭代关闭套接字
    {
        if (fd_arr[cfd])
        {
            Err::Close(cfd);
        }
    }
    Err::Close(lfd);
}
Server::Server(int port, string ip)
    : server_port(port), server_ip(ip)
{
}
void Server::thread_work(int clie_fd) 
{
    bool exit = false;
    // 菜单
    while (true)
    {
        exit = sign_menu(clie_fd);

        if (exit)
        {
            fd_pthread[clie_fd] = false;
            
            pthread_exit((void *)"客户端关闭");
        }
        // 主页面
    }
    cout << "线程退出" <<endl;
    return;
}

vector<bool> Server::fd_arr(1000, false); // 初始化vector
vector<bool> Server::fd_pthread(1000, false);
vector<bool> Server::fd_in(1000, false);
vector<bool> Server::fd_new(1000, false);
vector<string> Server::fd_ID(1000, "0");
vector<int> Server::fd_bor(1000, 0);
std::unordered_map<std::string, int> user_cfd;
//std::unordered_map<int ,std::thread::id> cfd_pid;
std::atomic<int> cfd;
int user_ID;
void Server::serun()
{
    struct sockaddr_in serv_addr, clie_addr;
    Library = redisConnect("127.0.0.1", 6379);
    if (Library == NULL || Library->err) {
        if (Library) {
            printf("连接错误: %s\n", Library->errstr);
            // 在这里可以释放连接资源
            redisFree(Library);
        } else {
            printf("无法分配内存\n");
        }
        return ;
    }
    lfd = Err::Socket(AF_INET, SOCK_STREAM, 0);
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(server_port);
    //cout<<server_ip<<endl;
    serv_addr.sin_addr.s_addr = inet_addr(server_ip.c_str());
    socklen_t clie_addr_len;
    clie_addr_len = sizeof(clie_addr);
    int opt = 1;
    setsockopt(lfd, SOL_SOCKET, SO_REUSEADDR, (void *)&opt, sizeof(opt));
    Err::Bind(lfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    Err::Listen(lfd, 128);
    int efd;
    efd = Err::Epoll_create(EP0LL_SIZE);
    struct epoll_event tep, ep[EP0LL_SIZE];
    tep.events = EPOLLIN | EPOLLOUT | EPOLLRDHUP; // 设置ET模式
    tep.data.fd = lfd;
    Err::Epoll_ctl(efd, EPOLL_CTL_ADD, lfd, &(tep));
    while (1)
    {
        int count = Err::Epoll_wait(efd, ep, EP0LL_SIZE, 0);
        for (int i = 0; i < count; i++)
        {
            if (!(ep[i].events & EPOLLIN))
            {
                continue;
            }
            if (ep[i].data.fd == lfd)
            {
                cfd = Err::Accept(lfd, (struct sockaddr *)&clie_addr, &clie_addr_len);
                // TCP心跳检测
                int keep_alive = 1;
                int keep_idle = 3;
                int keep_interval = 1;
                int keep_count = 10;
                if (setsockopt(cfd, SOL_SOCKET, SO_KEEPALIVE, &keep_alive, sizeof(keep_alive)))
                {
                    perror("Error setsockopt(SO_KEEPALIVE) failed");
                    exit(1);
                }
                if (setsockopt(cfd, IPPROTO_TCP, TCP_KEEPIDLE, &keep_idle, sizeof(keep_idle)))
                {
                    perror("Error setsockopt(TCP_KEEPIDLE) failed");
                    exit(1);
                }
                if (setsockopt(cfd, SOL_TCP, TCP_KEEPINTVL, (void *)&keep_interval, sizeof(keep_interval)))
                {
                    perror("Error setsockopt(TCP_KEEPINTVL) failed");
                    exit(1);
                }
                if (setsockopt(cfd, SOL_TCP, TCP_KEEPCNT, (void *)&keep_count, sizeof(keep_count)))
                {
                    perror("Error setsockopt(TCP_KEEPCNT) failed");
                    exit(1);
                }
                // 设置为非阻塞模式
                int flag = fcntl(cfd, F_GETFL);
                flag |= O_NONBLOCK;
                fcntl(cfd, F_SETFL, flag);
                tep.data.fd = cfd;
                Err::Epoll_ctl(efd, EPOLL_CTL_ADD, cfd, &tep);
                cout << "----" << cfd << "已连接----" << endl;
                fd_arr[cfd] = true;
            }
            else
            {
                if (!fd_pthread[ep[i].data.fd] && fd_arr[ep[i].data.fd])
                { // 如果不是监听套接字且没有创建线程
                    int sfd = ep[i].data.fd;
                    fd_pthread[sfd] = true;
                    thread chile_t(Server::thread_work, sfd); // 当客户端有读写请求时，为他单独开启一个线程
                    cout << "为" << sfd << "创建线程" << endl;
                    //std::thread::id tid=chile_t.get_id();
                    //cfd_pid[sfd]=tid;
                    chile_t.detach();
                }else if ((ep[i].events & EPOLLRDHUP) || (ep[i].events & EPOLLERR)) {
                    // 连接关闭或发生错误
                    int closedSocket = ep[i].data.fd;
                    cout << "客户端 " << closedSocket << " 终止。" << endl;
                    Err::Epoll_ctl(efd, EPOLL_CTL_DEL, closedSocket, NULL); // 从 epoll 中移除
                    //Err::Close(closedSocket); // 关闭套接字
                    fd_arr[closedSocket] = false;
                    fd_pthread[closedSocket] = false;
                    auto it = user_cfd.begin();
                    while (it != user_cfd.end()) {
                        if (it->second == closedSocket) {
                            it = user_cfd.erase(it); // 删除匹配值的键值对，并返回下一个迭代器
                        } else {
                            ++it;
                        }
                    }
                    
                }
            }
        }
    }
    Err::Close(lfd);
    Err::Close(efd);
}