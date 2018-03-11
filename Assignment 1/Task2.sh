#!/bin/bash

count=0 #variable for counting the line number
while IFS= read -r line #reading the file line by line
do
	if [ `expr $count % 2` -eq 0 ] #checking if its even
	then
		echo $count". "$line >> evenLines #writing in "evenLines" file
	else
		echo $count". "$line >> oddLines #else writing in "oddLines" file
	fi

count=`expr $count + 1` #increment the line number after reading one line successfully
done < $1 #$1 have the filename given in command line argument


