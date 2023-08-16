#include"clit.hpp"
#include "public.hpp"
int main(int argc ,char **argv)
{
    
    Clenit c(SERVERPORT,argv[1]);
    c.clirun();
}    