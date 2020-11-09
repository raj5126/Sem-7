%option noyywrap

%{
	#include <stdio.h>
	#include<string.h>
	long long int binaryToDecimal(char *n);
	long long int ans = 0;
%}

%%
^[01]+$ {ans = binaryToDecimal(yytext); printf("%lld",ans);}
[^01\n] {printf("Invalid");exit(1);} 

%%


long long int binaryToDecimal(char *n)
{
	int i=0;
	long long int x=0;
	int len = strlen(n);
	for(i=0;i<len;i++)
	{
		x = x*2 + (n[i]-'0');
	}
	return x;
}

int main()
{
	printf("Binary to decimal without power function\n");
	yylex();
	return 0;
}

