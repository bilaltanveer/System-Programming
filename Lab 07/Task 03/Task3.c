#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>

int main()
{
	char buff[244];
	int n=0;
	while(1)
	{
		n = read(0,buff,244);
	
		if(n<1)
		{
		exit(-n);	
		}
		int fd = open("newFile.txt",O_WRONLY|O_CREAT,0777);
		write(fd,buff,n);
	}
return 0;
}
