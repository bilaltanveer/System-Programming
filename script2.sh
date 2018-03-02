#!/bin/bash


arr=(`ls -l d1` ) #getting details of file d1 in array

Permissions=${arr[0]} #setting variables of info from the array respectively.
owner=${arr[2]}
group=${arr[3]}

echo "Owner: " $owner #printing info of set variables
echo "Group: " $group
echo "Permissions: " $permissions


if(test $owner=$1) #comparing owner with username given in the command line args
	then
	echo "Cheating: " 0
else
	echo "Cheating: " 1
fi

diff -c d1 d2 #checking differences of 2 files