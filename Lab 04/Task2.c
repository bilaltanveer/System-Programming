#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
int main(){
	int *i1, *i2, *i3 , i4*; //four pointers
	printf("sbrk(0) before malloc(4): 0x%x\n", sbrk(0)); //break pointer before malloc
	i1 = (int *) malloc( sizeof(int)* 1);	//moving the break pointer as memmory is allocated to pointer
	printf("sbrk(0) after `i1 = (int *) malloc(4)': 0x%x\n",sbrk(0)); 
	i2 = (int *) malloc(4);
	printf("sbrk(0) after `i2 = (int *) malloc(4)': 0x%x\n",sbrk(0));
	i3 = (int *) malloc(4);
	printf("sbrk(0) after `i3 = (int *) malloc(4)': 0x%x\n",sbrk(0));
	i4 = (int *) malloc(4);
	printf("sbrk(0) after `i4 = (int *) malloc(4)': 0x%x\n",sbrk(0));
	

	printf("i1 = 0x%x, i2 = 0x%x , i3 = 0x%x\n, i4 = 0x%x\n", i1, i2,i3,i4); // Showing values

	free(i1);
	free(i2);
	free(i3);
	free(i4);

	return 0;
}
