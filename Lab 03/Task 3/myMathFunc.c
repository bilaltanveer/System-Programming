#include<stdio.h>

int isEqual(int x,int y)
{
	if (x == y)
	{
		printf("Numbers are equal \n");
		return 1;
	}
	else
	{
		printf("Numbers are not equal \n");
		return -1;
	}
}
void Swap(int* a, int* b)
{
	int temp = *a;
	*a = *b;
	*b=temp;
}


