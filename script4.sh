#!/bin/bash

array=(`cat d1`) #getting input from the file named d1 in an array

echo "Elements of array: " ${array[*]} #Displaying Elements of array
echo "Length of array: " ${#array} #Displaying length
echo "Length of element 3: " ${#array[3]} #Displaying length of element 3

