#include"clit.hpp"
#include "public.hpp"
#include <termios.h>
int main(int argc ,char **argv)
{
    
    Clenit c(SERVERPORT,argv[1]);
    struct termios term;
    tcgetattr(0, &term); // 获取终端属性

    term.c_cc[VEOF] = 0; // 禁用 EOF 键

    tcsetattr(0, TCSANOW, &term); // 设置新的终端属性

    c.clirun();
}    