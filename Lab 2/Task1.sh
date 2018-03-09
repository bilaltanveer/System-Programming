#!/bin/bash

showTable()
{
value=$1 #setting the variable with the value of $1 which contains the No of which the table is required

if [ $# -eq 1 ] #checking if only one cmd argumentß is given
	then
	expr $1 + 0 #checking if valid no is given
	
		if [ $? -eq 0 ] #checking the status of last exected command
		then 
			for i in `seq 1 10`
			do
				echo "$value x $i= " `expr $value \* $i`  #printing table
			done
		fi

elif [ $# -eq 3 ] #checking if cmd arguments is equal to 3
	then
	expr $1 + $3	#checking if all the given numbers are valid
		if [ $? -eq 0 ] #if numbers are valid
		then
			if [ $2 = "-s" ] #checking if the 2nd argument is -s  
			then	
				for i in `seq $3 10`
				do
					echo "$value x $i= " `expr $value \* $i` #printing the table starting from the given no in $3
				done
			elif [ $2 = "-e" ]	#checking if the 2nd argument is -e 
			then	 
				for i in `seq 1 $3`
				do
					echo "$value x $i= " `expr $value \* $i` #printing the table starting from the 1 and ending at $3
				done
			fi
		fi
elif [ $# -eq 5 ] #checking if cmd arguments is equal to 5
	then
	expr $1 + $3 + $5	 #checking if all the given numbers are valid
		if [ $? -eq 0 ]
		then
			if [ $2 = "-s" ] #checking if the valid arguments are passed 
			then	
				if [ $4 = "-e" ]
				then	 
				for i in `seq $3 $5`
				do
					echo "$value x $i= " `expr $value \* $i` #printing the table starting from $3 and ending at $5
				done
				fi
			fi
		fi
elif [ $# -eq 6 ]	#checking if cmd arguments is equal to 6
	then
	expr $1 + $3 + $5	#checking if all the given numbers are valid
		if [ $? -eq 0 ]
		then
			if [ $2 = "-s" ] #checking if the valid arguments are passed at right positions
			then	
				if [ $4 = "-e" ] #checking for ending argument
				then
				r=$5			 #assigning the value of ending limit to variable r
					if [ $6 = "-r" ] #checking if we need to reverse the table
					then
						while [ $r -ge $3 ] 
						do
						echo "$value x $r= " `expr $value \* $r` #printing the table in reverse order
						r=`expr $r - 1`
						done
					fi	
				fi
			fi
		fi


else
	echo "No arguments"
fi 
}


showTable $1 $2 $3 $4 $5 $6

