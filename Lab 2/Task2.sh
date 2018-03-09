#!/bin/bash

Process()
{
set `ps -all -A | grep $1` #setting the positional arguments with the details of user given running process from the list of all running processes  

	echo "PID: " $4 #printing the details
	echo "PPID: " $5	
	shift 5
	echo "Name: " $9
}
Process $1 #$1 will hold the name of running process given in command line args
