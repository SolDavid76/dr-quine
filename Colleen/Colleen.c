#include <stdio.h>

void oui(){char *c="#include <stdio.h>%c%cvoid oui(){char *c=%c%s%c;printf(c,10,10,34,c,34,10,10,9,10);%c/*%c%coui%c*/}";printf(c,10,10,34,c,34,10,10,9,10);
/*
	oui
*/}
int main(){char *c="%cint main(){char *c=%c%s%c;oui();printf(c,10,34,c,34,10,10,9,10);%c/*%c%cmain%c*/}";oui();printf(c,10,34,c,34,10,10,9,10);
/*
	main
*/}