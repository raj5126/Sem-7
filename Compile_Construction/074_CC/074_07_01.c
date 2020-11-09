/*
    S -> aSa | bSb | a | b
	
    By doing Left Factoring
    S -> aA  | bB
    A -> Sa | ^ (NULL)
    B -> Sb | ^ (NULL)
*/

/*
 - Removing Indirect Left Recursion again yeilds a grammar which requires left factoring and the cycle goes on.
 - Making it impossible to construct its recursive decent parser, as to construct it, grammar shouldn't have any ambiguities.
 - Language is subset of palindrome and we know that palindrome language cannot be constructed using recursive decent parser
   and hence given grammar cannot be constructed using recursive decent parser.
*/
#include<stdio.h>
void main()
{
  printf("For S -> aSa | bSb | a | b\n");
  printf("- Removing Indirect Left Recursion again yeilds a grammar which requires left factoring and the cycle goes on.\n");
  printf("- Making it impossible to construct its recursive decent parser, as to construct it, grammar shouldn't have any ambiguities.\n");
  printf("- Language is subset of palindrome and we know that palindrome language cannot be constructed using recursive decent parser and hence given grammar cannot be constructed using recursive decent parser.\n");
}   