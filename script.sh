#!/bin/bash

read -p "Enter the first Number: " num1
read -p "Enter the second Number: " num2


res1=0
res2=0

expr $num1 + 0
if [ $? -eq 0 ]
	then
		echo "Number 1 is valid" 
	else
		echo "Number 1 is not valid"
		res1=1
fi
expr $num2 + 0
if [ $? -eq 0 ]
then
	echo "Number 2 is valid" 
else
	echo "Number 2 is not valid"
	res2=1
fi

if ( test $res1 -eq 0 && test $res2 -eq 0 )  
	then
		echo "Addition: " `expr $num1 + $num2`
		echo "Multiplication: " `expr $num1 \* $num2`
		echo "Subtraction: " `expr $num1 - $num2`
		echo "Division: " `expr $num1 / $num2`
		echo "Mod: " `expr $num1 % $num2` 

fi
