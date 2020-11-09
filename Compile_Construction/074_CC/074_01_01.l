%option noyywrap
%{
	#include<stdio.h>
%}

%%
(00|11)(0|1)*(00|11) {printf("Valid String");}
%%
int main()
{	
	printf("Enter String : ");
	yylex();
	return 0;
}