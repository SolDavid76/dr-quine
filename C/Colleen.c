#include <stdio.h>

/*
	Colleen
*/
void oui()
{
	char *payload="#include <stdio.h>%2$c%2$c/*%2$c%3$cColleen%2$c*/%2$cvoid oui()%2$c{%2$c%3$cchar *payload=%4$c%1$s%4$c;%2$c%3$cprintf(payload, payload, 10, 9, 34);%2$c}%2$c%2$c";
	printf(payload, payload, 10, 9, 34);
}

int main()
{
	char *payload="int main()%2$c{%2$c%3$cchar *payload=%4$c%1$s%4$c;%2$c%3$coui();%2$c%3$cprintf(payload, payload, 10, 9, 34);%2$c%3$c/*%2$c%3$c%3$cmain%2$c%3$c*/%2$c}%2$c";
	oui();
	printf(payload, payload, 10, 9, 34);
	/*
		main
	*/
}
