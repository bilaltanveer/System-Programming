#include<stdio.h>

int isPalindrome(char *arr, int size)
{
	int start=0;
	int end=size;
	end=end-1;
	for(start;start < size;start++)
	{
		if ( arr[start] != arr[end])
		{
			printf("Not Palindrome \n");
			return 0;
		}
		end--;
	}
	printf("Palindrome \n");
	return 1;
}
