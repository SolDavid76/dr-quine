#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int n = 5;

int main()
{
	char *payload="#include <fcntl.h>%2$c#include <stdio.h>%2$c#include <stdlib.h>%2$c#include <unistd.h>%2$c%2$cint n = %5$d;%2$c%2$cint main()%2$c{%2$c%3$cchar *payload=%4$c%1$s%4$c;%2$c%3$cif(n<0)%2$c%3$c{%2$c%3$c%3$creturn(0);%2$c%3$c}%2$c%3$cchar tmp[128];%2$c%3$csprintf(tmp, %4$cSully_%%d.c%4$c, n);%2$c%3$cint fd=open(tmp, O_CREAT | O_TRUNC | O_RDWR, 0666);%2$c%3$cdprintf(fd, payload, payload, 10, 9, 34, n-1);%2$c%3$cclose(fd);%2$c%3$csprintf(tmp, %4$cgcc -Wall -Wextra -Werror Sully_%%1$d.c -o Sully_%%1$d && ./Sully_%%1$d%4$c, n);%2$c%3$csystem(tmp);%2$c}%2$c";
	if(n<0)
	{
		return(0);
	}
	char tmp[128];
	sprintf(tmp, "Sully_%d.c", n);
	int fd=open(tmp, O_CREAT | O_TRUNC | O_RDWR, 0666);
	dprintf(fd, payload, payload, 10, 9, 34, n-1);
	close(fd);
	sprintf(tmp, "gcc -Wall -Wextra -Werror Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d", n);
	system(tmp);
}
