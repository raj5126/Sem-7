%option noyywrap

%{
	#include <stdio.h>
	#define STACK_SIZE 100
	char stack[STACK_SIZE];
	int top = -1;
	char stage = '0';
	void push(char c)
	{
		stack[++top] = c;
	};
	char pop()
	{	
		return stack[top--];
	};
	int empty()
	{
		return (top < 0);
	}
%}

%%
a {
	if(stage=='0' || stage=='a')
	{
		push(yytext[0]);
		stage = 'a';	
	}
	else
	{
		printf("Not accepted\n");
		exit(1);
	}
  }

b {
	if(stage=='a' || stage=='b')
	{
		if(!empty()){
			stage='b';
			pop();
		}
		else{
			stage='B';
			push('b');
		}
	}
	else if (stage=='B')
	{
		push('b');
	}
	else{
		printf("Not accepted\n");
		exit(1);
	}
}

c {
	if(stage=='B' || stage=='c')
	{
		if(!empty()){
			stage = 'c';
			pop();
		}
		else{
		printf("Not accepted\n");
			exit(1);
		}
	}
	else{
		printf("Not accepted\n");
		exit(1);
	}
}

\n {
	if(stage=='c' && empty())
	{
		printf("Accepted\n");
		exit(0);
	}
	else{
		printf("Not accepted\n");
		exit(1);
	}
}

[^abc\n] {
	printf("Invalid String.\n");	
	exit(1);
   }


%%
int main()
{
	printf("Program for a^i b^j c^k where (i,k>=1, j=i+k).\n");
	yylex();
	return 0;
}

