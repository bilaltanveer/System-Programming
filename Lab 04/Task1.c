#include<stdio.h>
#include <stdlib.h>


int main()
{
	int size = 10;
	int *arr = (int*) malloc (sizeof(int) * size); //making array of size 10

	int i = 0;

	for(i;i<10;i++)
	{
		arr[i] = i; // initialization
	}
	i = 0;
	for(i;i<10;i++)
	{
		printf("The values at index %d : %d \n" , i , arr[i]); // printing values of array
 	}
	

	int newsize = 2*size;
	int * narr = (int*) realloc (arr, sizeof(int) * newsize); //making new array of double the size of prev arrays

	i = 0;
	
	for(i;i<newsize;i++)
	{
		narr[i] = i; // initialization
	}
	int j = 0;
	for(j;j<newsize;j++)
	{
		printf("The values at index of new array %d : %d \n" , j , narr[j]); // printing elements of array
	}

	free(narr); //free the memory allocated to array
	return 0; 
}
