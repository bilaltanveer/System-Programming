#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>

int main()
{
	char buff[244];
	int n=0;
	int n2=0;
	int fd2 = open("f1.txt",O_RDONLY|O_CREAT,0777);
	while(1)
	{
		n = read(fd2,buff,244);
	
		if(n<1)
		{
		exit(-n);	
		}
		int fd = open("newFile.txt",O_WRONLY|O_CREAT,0777);
		write(fd,buff,n);
	}
return 0;
}
