/*
Write a program to generate the dominator tree for the given control flow
graph.

example 1
----------
1 2
1 3
2 3
3 4
4 3
4 5
4 6
5 7
6 7
7 4
7 8
8 9
8 10
9 11
10 7
10 3
10 11
11 1
-1-1

example 2
----------
1 2
2 3
3 4
3 5
4 6
4 7
6 8
7 8
5 9
-1-1

*/

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define NMAX 1000

int graph[NMAX][NMAX],dtree[NMAX][NMAX],s_max = 0;
void fill_zero(int data[NMAX][NMAX]);
void fill_zero1d(int *data,int size);
int getGraph(int data[NMAX][NMAX]);
void makeCopy(int *s1,int *s2,int smax);
int areEqual(int *s1,int *s2,int smax);
int genDominatorTree(int d1[NMAX][NMAX],int d2[NMAX][NMAX],int smax,int snode);
int max_i(int a,int b);
void printDTree(int data[NMAX][NMAX],int smax,int snode);
void print_init();

void main(void)
{
    print_init();
    fill_zero(graph);
    fill_zero(dtree);
    
    s_max = getGraph(graph);
    printf("\nEnter Starting Node For Graph: ");
    int snode;
    scanf("%d",&snode);
    int fg = genDominatorTree(graph,dtree,s_max,snode);
    printDTree(dtree,s_max,snode);    
    return;
}

void printDTree(int dt[NMAX][NMAX],int smax,int snode)
{
    printf("\nEdges For Dominator Tree:\n");
    printf("Root Node: %d\n",snode);
    int cflag = 0, carr[2];
    for(int i=0;i<smax;i++)
    {
        if(i==snode)
            continue;
        cflag = 0;  carr[0] = -1;carr[1] = -1;
        for(int j=i;j>=0;j--)
        {
            if(cflag==2)
                break;
            if(dt[i][j]!=1)
                continue;
            carr[cflag] = j;
            cflag++;
        }
        if(carr[0]==-1 || carr[1] == -1)
            continue;
        printf("%d -> %d\n",carr[1],carr[0]);
    }
}

int getGraph(int data[NMAX][NMAX])
{
    printf("\nEnter Graph:\n");
    int x = 0, y = 0,smax = 0;
    while(1)
    {
        scanf("%d %d",&x,&y);
        if(x==-1 || y==-1)
            break;
        smax = max_i(smax,max_i(x,y));
        data[x][y] = 1;
    }
    return smax+1;
}

void fill_zero(int data[NMAX][NMAX])
{
    for(int i=0;i<NMAX;i++)
        for(int j=0;j<NMAX;j++)
            data[i][j] = 0;
}

int max_i(int a,int b)
{
    return a>b?a:b;
}

int genDominatorTree(int data[NMAX][NMAX],int dans[NMAX][NMAX],int smax,int snode)
{
    int dn[smax][smax];
    int outset[smax][smax],inset[smax][smax];
    for(int i=0;i<smax;i++)
    {
        for(int j=0;j<smax;j++)
        {
            dn[i][j] = 0;
            outset[i][j] = 0;
            inset[i][j] = 0;
        }
    }
    //Initial Steps
    outset[snode][snode] = 1;
    for(int i=0;i<smax;i++)
    {
        if(i==snode)
            continue;
        for(int j=0;j<smax;j++)
            outset[i][j] = 1;
    }
    int tinset[smax],toutset[smax];
    int changeFlag = 1, fassignfg;
    int t2iset[smax];

    int changeCN = 0;

    fill_zero1d(tinset,smax);fill_zero1d(toutset,smax);fill_zero1d(t2iset,smax);
    while (changeFlag == 1)
    {
        changeCN++;
        changeFlag = 0;
        for(int i=0;i<smax;i++)
        {
            if(i==snode)    
                continue;
            fill_zero1d(tinset,smax);fill_zero1d(toutset,smax);fill_zero1d(t2iset,smax);
            makeCopy(inset[i],tinset,smax);
            makeCopy(outset[i],toutset,smax);
            fassignfg = 0;
            //Predecessor for i th node
            for(int p=0;p<smax;p++)
            {
                if(data[p][i]==1)
                {
                    //First Block[Node (Predecessor)]
                    if(fassignfg==0)
                    {
                        fassignfg = 1;
                        makeCopy(outset[p],t2iset,smax);
                        continue;
                    }
                    // Finding Intersection
                    for(int b=0;b<smax;b++)
                            if(t2iset[b]==1)
                                    t2iset[b] = outset[p][b];  
                }
            }
            makeCopy(t2iset,inset[i],smax);
            makeCopy(t2iset,outset[i],smax);
            outset[i][i] = 1;
            //Checking if there is change in outset or inset.
            if(areEqual(outset[i],toutset,smax)==0 || areEqual(inset[i],tinset,smax)==0)
                changeFlag = 1;
        }
    }
    for(int i=0;i<smax;i++)
        makeCopy(outset[i],dans[i],smax);
    return 1;
}

int areEqual(int *s1,int *s2,int smax)
{
    for(int i=0;i<smax;i++)     
		if(s1[i]!=s2[i])    
			return 0;
    return 1;
}

void fill_zero1d(int *data,int size)
{
    for(int i=0;i<size;i++)     
		data[i] = 0;
}

void makeCopy(int *s1,int *s2,int smax)
{
    for(int i=0;i<smax;i++)     
		s2[i] = s1[i];
}

void print_init()
{
    printf("\n* Note\n");
    printf("\n1. Enter Edges one by one");
    printf("\n2. At the end type '-1 -1'");
}