#define X 5
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){char *c="#define X %d%c#include <fcntl.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%cint main(){char *c=%c%s%c;if(X<0){return(0);}char file[64], command[128];sprintf(file, %cSully_%%d.c%c, X);sprintf(command, %cgcc -Wall -Wextra -Werror %%s -o Sully%c, file);int fd=open(file, O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd,c,X-1,10,10,10,10,10,34,c,34,34,34,34,34);close(fd);system(command);}";if(X<0){return(0);}char file[64], command[128];sprintf(file, "Sully_%d.c", X);sprintf(command, "gcc -Wall -Wextra -Werror %s -o Sully", file);int fd=open(file, O_CREAT | O_TRUNC | O_RDWR, 0666);dprintf(fd,c,X-1,10,10,10,10,10,34,c,34,34,34,34,34);close(fd);system(command);}