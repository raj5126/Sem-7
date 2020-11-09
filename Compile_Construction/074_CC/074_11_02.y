%{ 
#include<stdio.h> 
#include<math.h>

int flag=0; 
%} 

%token NUMBER 

%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

%left NEG 

%right '^'

%% 

ArithmeticExpression: E{ 

		printf("\nResult=%d\n", $$); 

		return 0; 

		}; 
E:E'+'E {$$=$1+$3;} 

|E'-'E {$$=$1-$3;} 

|E'*'E {$$=$1*$3;} 

|E'/'E {$$=$1/$3;} 

|E'%'E {$$=$1%$3;} 

|'-'E %prec NEG {$$=$2;}

|E'^'E {$$= pow((double)$1,(double)$3);} 

|'('E')' {$$=$2;} 

| NUMBER {$$=$1;} 

; 

%% 


void main() 
{ 
	printf("\nEnter Any Arithmetic Expression : "); 

	yyparse(); 
		
} 

void yyerror() 
{ 
	printf("\nEntered arithmetic expression is Invalid\n\n"); 
	flag=1; 
} 

