#!/bin/bash

toLower()
{
value=$1
echo ${value,,} #converting the string to lower case
}



isRoot()
{
if [  `id -u` -eq 0 ] #checking if the current user id equal to root ie 0
then
	echo "Executed by root"
else
	echo "Not Executed by root"
fi

}

isUserExists()
{
name=$1
cat /etc/passwd | grep $name >/dev/null #checking the username in etc/passwd and redirects the command output to dev/null
if [ $? -eq 0 ]
then
	echo "User exists"
else
	echo "User does not exit"
fi

}
toLower $1 #passing arguments
isRoot
isUserExists $2
