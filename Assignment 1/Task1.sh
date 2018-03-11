#!/bin/bash

files=( `ls` )  #storing everything from pwd in an array named files
for i in ${files[@]} #looping through each file and folder
do
	echo $i 
	IFS=$'.' arr=( $i ) #splitting on the basis of . and storing the extension in an array
	if [ -d ${arr[1]} ] #checking if the folder already existed
	then
		IFS=$" "
		mv $i ${arr[1]} #moving the file into the folder already existed
	else
		IFS=$" "
		mkdir ${arr[1]} #creating the folder if not existed
		mv $i ${arr[1]} #then moving the file in folder
	fi 
	
done