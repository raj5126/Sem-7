%option noyywrap

%{ 
        #include <stdio.h>
        int flag = 0;  
%} 

%% 
^[A-Za-z0-9_.]+@([a-z]+\.)+[a-z]{2,4}$     {flag=1;}
\n      {
        if (flag == 1)
			{
				printf("\nValid email address.\n");
				exit(1);
			}
        else
			{
				printf("\nInvalid email address.\n");
				exit(0);
			}
        } 
%% 

int main() { 
        yylex(); 
        return 0;
} 