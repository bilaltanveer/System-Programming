#include<stdio.h>

int isPalindrome(char *arr, int size) 
{
	int start=0;   // 2 var "start" starting from the [0] of string "end" starting from the last index
	int end=size; 
	end=end-1;
	for(start;start < size;start++)
	{
		if ( arr[start] != arr[end]) //comparing from the start and the end if mismatched it will return 0 and Not Palindrome
		{
			printf("Not Palindrome \n");
			return 0;
		}
		end--;
	}
	printf("Palindrome \n"); // else it will print Palindrome and returnß
	return 1;
}
