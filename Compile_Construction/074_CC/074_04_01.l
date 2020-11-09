%option noyywrap

%{
	#include<stdio.h>
	#include<stdlib.h>
	#define stack_size 100
	static int sp=-1;
	static char stack [stack_size];
	static void push(char i)
	{
		if(++sp<stack_size)
			stack[sp] = i;
		else
		{
			printf("Error: stack overflow\n");
			exit(1);
		}
	}
	static char pop(void)
	{
		if(sp>=0)
			return stack[sp--];
		else
		{
			printf("Error: stack underflow\n");
			exit(1);
		}
	}
	static int emptystack()
	{
		return (sp<0);
	}
%}

%%
[\{\[\(]	{
			push(yytext[0]);
			}
		
[\}\]\)]	{
				if(emptystack())
				{
					printf("Invalid pattern\n");
					exit(1);
				}
				else
				{ 
				   char right = yytext[0];
				   char left = pop();
				   if ((right=='}' && left!='{') || (right==']' && left!='[') || (right==')' && left!='('))
					{
						printf("Invalid Pattern\n");
						exit(1);
					}
				
				}
			
		}

\n      {
			if (sp==-1)
			{
				printf("Valid Pattern\n");
				exit(0);
			}
			else
			{
				printf("Invalid Pattern\n");
				exit(1);
			}
		}
		
[^\n\(\[\{\)\]\}]	{
						printf("Please Enter Correct symbol.\n");
						exit(1);
					}
%%

int main()
{
	printf("Bracket Matching Program.\n");
	yylex();
	return 0;
}