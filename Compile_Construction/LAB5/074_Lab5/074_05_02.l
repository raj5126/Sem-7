%option noyywrap

%{
	#include <stdio.h>
	int n1 = 0;
	int n2 = 0;
	int result = 0;
	int flag = 0;
%}

%%
\n {	
	if (flag==0)
	{
		n1 = result;
		result = 0;
		flag =1;	
	}
	else{
		n2 = result;
		result = 0;
		flag = 0;
		printf("%3d + %3d = %3d\n", n1, n2, n1+n2);
	}
}

I { result += 1; }
IV { result += 4; }
V { result += 5; }
IX { result += 9; }
X { result += 10; }
XL { result += 40; }
L { result += 50; }
XC { result += 90; }
C { result += 100; }
CD { result += 400; }
D { result += 500; }
CM { result += 900; }
M { result += 1000; }

[^IVXLCDM] {
	printf("Invalid Roman Please enter valid.\n");
	exit(1);
}

%%
int main()
{
	printf("Convert Roman to Decimal with addition.\nGive two numbers in a line seprated form.\n");
	yylex();
	return 0;
}
