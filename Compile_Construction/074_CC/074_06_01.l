%option noyywrap
%{
	#include<stdio.h>
	#include<stdlib.h>
	static int sp;
	static int stack[100];
	static void push(int x)
	{	
		sp++;
		if(sp<100)
		{
			stack[sp]=x;
		}
		else
		{
			printf("Stack Overflow\n");
			exit(1);
		}
	}
	
	static int pop()
	{	
		if(sp>=0)
		{
			return stack[sp--];
		}
		else
		{
			printf("Stack Underflow\n");
			return 0;
		}
	}
	
%}
%%
[0-9]	{
				push(yytext[0]-'0');
		}

[\+\-\*\/]	{
				int n1=pop();
                int n2=pop();
				if(yytext[0]=='+')
				{
					push(n1+n2);
				}
				else if (yytext[0]=='-')
				{
					push(n2-n1);
				}
                else if (yytext[0]=='*')
                {
                    push(n1*n2);       
                }
                else if (yytext[0]=='/')
                {
                    if (n1==0)
                         {
                                printf("Divide by zero error");
                                exit(1);
                         }
                                        
                    push(n2/n1);
                }
			}
[^0-9\+\-\*\/\n] 	{
						printf("Invalid\n");
						exit(1);
					}
\n			{
				if(sp==0)
				{
					printf("%d",pop());
					exit(0);
				}
				else
				{
					printf("Invalid\n");
					exit(1);
				}
			}
%%

int main() 
{
    sp=-1;
    yylex(); 
    return 0; 
}
