%{
	#include<stdio.h>
	#include<string.h>
	int i, flag=0;
%}

%%
[a-zA-Z]+ {
	for(i=0;i<yyleng-1;i++){
		if(yytext[i]<=yytext[i+1]){
			flag=1;
		}
		else{
			flag=0;
			break;
		}
	}
	if(flag==1)
		printf("Lexicographical Order");
	else
		printf("Not a Lexicographical Order");
}
%%
int yywrap(){
	return 1;
}
int main()
{
	printf("Enter String : ");
	yylex();
}
