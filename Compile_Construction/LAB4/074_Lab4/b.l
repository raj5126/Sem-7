%option noyywrap

%{
	#include <stdio.h>
	int count = -1;
	int flag=0;
%}

%%
[ab]*c {
	if(flag==1)
	{
		printf("Invalid\n");
		exit(1);
	}
	else{
		flag=1;
		count = yyleng-1;
	}
    }

[ab]*\n {
	if(flag==0)
	{	
		printf("Invalid\n");
		exit(1);
	}
	else
	{
		if( (yyleng-1) == count)
		{
			printf("Valid\n");
			exit(0);
		}
		else
		{
			printf("Invalid\n");
			exit(1);
		}
	}
}

[ab] { 
	printf("Invalid\n");
	exit(1);
	}

^c\n {
	printf("Valid\n");
	exit(0);
}

[^abc\n] { 
	printf("Invalid");
	exit(1);
}

%%
int main()
{
	printf("L={xcy| x, y ε{a, b}* and |x|=|y|}\n");
	yylex();
	return 0;
}

