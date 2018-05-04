#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>


int main(int size,char *args[])
{
	char buff[244];
	int n=0;
	int fd = open(args[1],O_RDONLY,0777);
	int fd2 = open(args[2],O_WRONLY|O_CREAT,0777);
	while(1)
	{
		n = read(fd,buff,244);
	
		if(n<1)
		{
			exit(-n);	
		}
		
		write(fd2,buff,n);
	}
return 0;
}
