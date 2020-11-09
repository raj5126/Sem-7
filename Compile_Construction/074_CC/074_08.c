/*Find First Set of Grammer
  
  #Try Out this grammer.
  1.)	S=aAbb
		A=c
		A=$
		B=d
		B=$
  
  2 ).	E=TR
		R=+TR
		R=$
		T=FY
		Y=*FY
		Y=$
		F=(E)
		F=i
  
*/

#include<stdio.h>
#include<ctype.h>

int count,n=0;
char prodn[10][100], first[10];

void find_first(char c)
{
	int j;
	if(!(isupper(c)))
		first[n++]=c;
	
	for(j=0;j<count;j++)
	{
		if(prodn[j][0]==c)
		{
			if(prodn[j][2]=='$') 
				first[n++]='$';
			else if(islower(prodn[j][2]))
				first[n++]=prodn[j][2];
			else 
				find_first(prodn[j][2]);
		}
	}
}

void main()
{
	int i,choice;
	char c,ch;
	
	printf("How many productions are in your grammer ? :");
	scanf("%d",&count);
	
	printf("Enter %d productions (Consider $ as Null):\n",count);
	
	for(i=0;i<count;i++)
		scanf("%s%c",prodn[i],&ch);
	
	do
	{
		n=0;
		
		printf("Element Non Terminal Symbol of your Grammer :");
		scanf("%c",&c);
		
		find_first(c);
		
		printf("First(%c)= { ",c);
		
		for(i=0;i<n;i++)
			printf("%c ",first[i]);
		
		printf("}\n");

		printf("press 1 to continue : ");
		scanf("%d%c",&choice,&ch);
		
	}while(choice==1);

}

