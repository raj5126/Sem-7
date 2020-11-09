/* 
	Write a program to generate Intermediate Code (three address code) from the
	given infix expression.
	-  Program must support the operators: +,-, *, /, ^
	-  Quadruple table is generated as output.
	
	Example 
	1. a+b*c
	2. a+b*c^d
*/


#include<string.h>
#include<stdio.h>
#include<stdlib.h>
#define NMAX 1000

struct Stack_Definition
{
    char stack[NMAX];
    int sp;
};
typedef struct Stack_Definition Stack;

void InfixToPostfix(char *expr,char *ptfix);
int My_func_prec(char ch);
void getThree_Adress_Code(char *postfix);
char peek(Stack *s);
void push(Stack *s,char ch);
char pop(Stack *s);
int isEmpty(Stack *s);

int My_func_prec(char ch)
{
    if(ch=='(')
        return 0;
    if(ch=='+' || ch=='-')
        return 1;
    if(ch=='/' || ch=='*')
        return 2;
    if(ch=='^')
        return 3;
    return 0;
}

char pop(Stack* stack)
{
    if(stack->sp == 0)
    {
        printf("Expression Might be Wrong.\nSome Error Occurred.");
        exit(1);
    }
    stack->sp--;
    char ch = stack->stack[stack->sp];
    stack->stack[stack->sp] = (char)0;
    return ch;
}

char peek(Stack* stack)
{
    return stack->stack[(stack->sp)-1];
}

void push(Stack *stack,char ch)
{
    if(stack->sp==NMAX)
    {
        printf("Stack Overflow");
        exit(1);
    }
    stack->stack[stack->sp] = ch;
    stack->sp++;
  
}

int isEmpty(Stack *stack)
{
    if(stack->sp==0)
        return 1;
    return 0;
}

void InfixToPostfix(char *expr,char *postfix)
{
    Stack *stack = (Stack*)malloc(sizeof(Stack));
    stack->sp = 0;
    int i;
	for( i=0;i<NMAX;i++) stack->stack[i] = 0;
    char ch;
    int flag = 0;
    for(i=0;i<strlen(expr);i++)
    {
        ch = expr[i];
        if(ch==' ')
            continue;
        if(ch=='(' || ch=='^')
        {
            push(stack,ch);
        }
        else if(ch==')')
        {
            while(peek(stack)!='(')
            {
                postfix[flag] = pop(stack);
                flag++;
            }
            pop(stack);
        }
        else if(ch=='+' || ch=='-' || ch=='*' || ch=='/')
        {
            while(isEmpty(stack)==0 && My_func_prec(peek(stack)) >= My_func_prec(ch) )
            {
                postfix[flag] = pop(stack);
                flag++;
            }
            push(stack,ch);
        }
        else
        {
            postfix[flag] = ch;
            flag++;
        } 
    }
    while(isEmpty(stack)==0)
    {
        postfix[flag] = pop(stack);
        flag++;
    }   
}

void main(void)
{
    char expr[100],prefix[100];
    int i;
	for( i=0;i<100;i++)
    {
        expr[i] = (char)0;
        prefix[i] = (char)0;
    }
       printf("Enter Expression like  a*b^c/d : ");
    scanf("%[^\n]",expr);
    InfixToPostfix(expr,prefix);
    if(strlen(prefix)%2==0)
    {
        printf("\nInvalid Statement.");
        exit(1);
    }
    printf("\n\tThree Address Code Table\n");
    getThree_Adress_Code(prefix);
}

void getThree_Adress_Code(char *postfix)
{
    Stack *stk=(Stack*)malloc(sizeof(Stack));
    stk->sp = 0;
    char ch;
    int flag = 0;
    int stack2[100],flag2 = 0;
    printf("|");
	int i;
	for( i=0;i<45;i++)printf("-");
	printf("|\n");
    printf("| Operator |  Operand1  | Operand2 |  Result  |\n");
    printf("|");
	for(i=-0;i<45;i++)printf("-");printf("|\n");
    
	for(i=0;i<strlen(postfix);i++)
    {
        ch = postfix[i];
        if(ch=='/' || ch=='+' || ch=='*' || ch=='-' || ch=='^')
        {
            if(flag==0)
            {
                flag++;
                char t1 = pop(stk);
                char t2 = pop(stk);
                push(stk,'$');
                stack2[flag2] = flag;flag2++;
                printf("|     %c\t   |     %c\t|     %c\t   |     %d    |",ch,t2,t1,flag);
            }
            else
            {
                char t1 = pop(stk);
                char t2 = pop(stk);
                push(stk,'$');
                if(t1=='$' || t2=='$')
                {
                    if(t1=='$')
                    {   
                        stack2[flag2-1]=0;flag2--;
                        if(t2=='$')
                        {
                            printf("|     %c\t   |     %d\t|     %d\t   |     %d    |",ch,stack2[flag2-1],flag,flag+1);
                            stack2[flag2-1]=0;flag2--;
                        }
                        else
                            printf("|     %c\t   |     %c\t|     %d\t   |     %d    |",ch,t2,flag,flag+1);
                    }
                    else
                    {
                        printf("|     %c\t   |     %d\t|     %c\t   |     %d    |",ch,flag,t1,flag+1);
                    }
                }
                else
                {
                    printf("|     %c\t   |     %c\t|     %c\t   |     %d    |",ch,t2,t1,flag+1);
                }
                flag++;
                stack2[flag2]=flag;flag2++;
            }
            printf("\n");
        }
        else
        {
            push(stk,ch);
        } 
    }
    pop(stk);
    for(i=0;i<47;i++)printf("-");printf("\n");
    if(stk->sp!=0)
    {
        printf("Invalid Expression");
        exit(1);
    }
}

