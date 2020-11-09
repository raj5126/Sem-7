/*  given grammer
    S -> ABC
    A -> aAb | C 
    B -> cB | d
    C -> eC | f
*/

/*
  Try out
  
  Correct example:-
  fdf$,
  aefbccdeef$,
  efcdf$
  
  Wrong example:-
  $,
  acbdf$,
  aefbef$
*/

#include<stdio.h>
#include<stdlib.h>

char current_symbol;
int S();
int A();
int B();
int C();

char getChar()
{
    char symbol;
    scanf("%c",&symbol);
    if (symbol=='a' || symbol=='b' || symbol=='c' || symbol=='d' || symbol=='e' || symbol=='f' || symbol=='$')
        return symbol;
    printf("Enter Valid Input Character From Set (a,b,c,d,e,f,$)");
    exit(1);
}

int C()
{
    if(current_symbol=='f')
    {
        current_symbol=getChar();
        return 1;
    }
    if(current_symbol=='e')
    {
        current_symbol=getChar();
        return C();
    }
    return 0;
}

int B()
{
    if(current_symbol=='d')
    {
        current_symbol = getChar();
        return 1;
    }
    if(current_symbol=='c')
    {
        current_symbol = getChar();
        return B();
    }
    return 0;
}

int A()
{
    if(C()==1)
        return 1;
    if(current_symbol=='a')
    {
        current_symbol = getChar();
        if(A()==1)
        {
            if(current_symbol=='b')
            {
                current_symbol = getChar();
                return 1;
            }
        }
    }
    return 0;
}

int S()
{
    if(A()==1)
    {
        if(B()==1)
        {
            if(C()==1)
            {
                if(current_symbol=='$')
                    return 1;
            }
        }
    }
    return 0;
}

void main()
{
    printf("Please append $ at last \n");
    current_symbol = getChar();
    int state = S();
    if(state==1 && current_symbol=='$')
    {
        printf("String follows given grammer.");
    }
    else
    {
        printf("String does not follows given grammer.");
    }
    return;
}