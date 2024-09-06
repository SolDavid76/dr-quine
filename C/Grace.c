#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#define FT(x) int main(){char *payload="#include <fcntl.h>%2$c#include <stdio.h>%2$c#include <unistd.h>%2$c%2$c#define FT(x) int main(){char *payload=%4$c%1$s%4$c;int fd=open(%4$cGrace_kid.c%4$c, O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd, payload, payload, 10, 9, 34);close(fd);}%2$cFT(x)%2$c/*%2$c%3$coui%2$c*/%2$c";int fd=open("Grace_kid.c", O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd, payload, payload, 10, 9, 34);close(fd);}
FT(x)
/*
	oui
*/
