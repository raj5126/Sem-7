%option noyywrap

%{
	#include <stdio.h>
	#include <string.h>
	#include <stdlib.h>
	char* DecimalToOctal(char *);
	char s[100];
%}

%%
^[0-9]+\n {DecimalToOctal(yytext);printf("%s\n",s);}
[^0-9\n] {printf("Invalid\n");exit(1);}
%%

char* DecimalToOctal(char *ns)
{

	int n = atoi(ns);
	int i=0, r;
	char t;

	while(n!=0)
	{
		r = n%8L;
		n = n/8L;
		s[i++] = r + '0';
	}
	s[i] = '\0';
	
	// reversing	
	int len = i;
	for(i=0;i<len/2;i++)
	{
		t = s[i];
		s[i] = s[len-i-1];
		s[len-i-1] = t;
	}
}

int main()
{
	printf("Decimal number to octal number\n");
	yylex();
	return 0;
}

