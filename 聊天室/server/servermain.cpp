#include"ser.hpp"
#include"public.hpp"
redisContext* Library;
std::atomic<char *> BBuf;
//启用一个redis库
int main()
{
    Server server(SERVERPORT,"0.0.0.0");
    server.serun();
}