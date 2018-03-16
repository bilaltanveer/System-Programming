#include<stdio.h>

int isEqual(int x,int y) // Definition of Functions
{
	if (x == y)
	{
		printf("Numbers are equal");
		return 1;
	}
	else
	{
		printf("Numbers are not equal");
		return -1;
	}
}
void Swap(int a,int b)
{
	a = a+b;
	b=a-b;
	a=a-b;
}


