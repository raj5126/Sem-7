%option noyywrap
%{
	#include<stdio.h>
	#include<stdlib.h>
	int flag=0;
%}
%%
^[$&+,:;=?@#|'<>.^*()%!-]{1}[a-zA-Z0-9$&+, :;=?@#|'<>.-^*()%!]{6,14} {flag=1;}

\n  {
			if(flag==1)
			{
				printf("\nValid Password");
				exit(1);
			}
			else
			{
				printf("\nInvalid Password");
				exit(0);
			}
	}
%%

int main() 
{
    yylex(); 
    return 0; 
}