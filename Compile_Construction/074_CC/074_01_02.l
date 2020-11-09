%{
	#include<stdio.h>
	#include<string.h>
	int count = 0;
	char a1[] = "a";
	char a2[] = "and";
	char a3[] = "the";
%}

%%
[a-zA-Z]+ {if (strcmp(yytext,a1)==0 || strcmp(yytext,a2)==0 || strcmp(yytext,a3)==0)
		count++;
	  }
. ;
%%
int yywrap(){
  return 1;
}
int main()
{
	extern FILE *yyin, *yyout;
	yyin = fopen("sample.txt","r");
	yylex();
	printf("%d", count);
}