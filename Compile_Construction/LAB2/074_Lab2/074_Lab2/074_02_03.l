/*Write a LEX program that accepts all binary strings divisible by 4*/
%option noyywrap
%s A B C DEAD
%{
    #include<stdio.h>
%}
%%
<INITIAL>1  BEGIN   A;
<INITIAL>0  BEGIN   INITIAL;
<INITIAL>[^01\n]    BEGIN   DEAD;
<INITIAL>\n BEGIN   INITIAL;    {printf("Accepted\n");}

<A>1    BEGIN   C;
<A>0    BEGIN   B;
<A>[^01\n]    BEGIN   DEAD;
<A>\n   BEGIN   INITIAL;    {printf("Rejected\n");}

<B>1    BEGIN   A;
<B>0    BEGIN   INITIAL;
<B>[^01\n]    BEGIN   DEAD;
<B>\n   BEGIN   INITIAL;    {printf("Rejected\n");}

<C>1    BEGIN   C;
<C>0    BEGIN   B;
<C>[^01\n]    BEGIN   DEAD;
<C>\n   BEGIN   INITIAL;    {printf("Rejected\n");}

<DEAD>[^\n]    BEGIN   DEAD;
<DEAD>\n   BEGIN   INITIAL;    {printf("Rejected\n");}

%%
int main(){
    yylex();
    return 0;
}