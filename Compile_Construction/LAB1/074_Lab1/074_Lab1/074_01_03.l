%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-z] {char ch = yytext[0]; 
	ch+=3;
	if (ch>'z')
	{ch  = ch - ('z'+1-'a');}
	printf("%c",ch);}
[A-Z] {char ch = yytext[0]; 
	ch+=3;
	if (ch>'Z')
	{ch = ch - ('Z'+1-'A');}
	printf("%c",ch);}
%%
int main()
{	
	yylex();
	return 0;
}