#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#define FT(x) int main(){char *c="#include <fcntl.h>%c#include <stdio.h>%c#include <unistd.h>%c#define FT(x) int main(){char *c=%c%s%c;int fd=open(%cGrace_kid.c%c, O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd,c,10,10,10,34,c,34,34,34,10,10,10,9,10);close(fd);}%cFT(x)%c/*%c%coui%c*/";int fd=open("Grace_kid.c", O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd,c,10,10,10,34,c,34,34,34,10,10,10,9,10);close(fd);}
FT(x)
/*
	oui
*/