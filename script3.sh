#!/bin/bash

UNIX=( Debian 'Red Hat' Ubuntu Suse Fedora ) #Populating Array of named UNIX
echo "Elements: " ${UNIX[*]}  #Displaying Elements
echo "Length of Array: " ${#UNIX}	#Displaying length of array
echo "Length of element 2: " ${#UNIX[2]} #Displaying length of element 2
echo "Two elements from position 3: " ${UNIX[3]} ${UNIX[4]} #Displaying next 2 Elements from position 3

echo "Searching Ubuntu and replacing with SCO UNIX: " ${UNIX[*]/"Ubuntu"/"SCO UNIX"} #Searching Ubuntu replacing with SCO UNIX

UNIX[5]=AIX
UNIX[6]=HP-UX  #temp=(${UNIX[*]} "AIX" "HP-UX") #Appending two more elements
echo "Elements: " ${UNIX[*]} #Displaying Elements

unset UNIX[2] #Removing Element 2
echo "Elements: " ${UNIX[*]} #Displaying Elements

LINUX=(${UNIX[*]}) #Copying Elements of unix into Linux
echo "Elements of LINUX: " ${LINUX[*]} #Displaying Elements of Linux
BASH=(${UNIX[*]} ${LINUX[*]}) #Concatenating two arrays
echo "Elements of LINUX: " ${BASH[*]} #Displaying Elements of BASH

unset UNIX[*] #Deleting two arrays
unset LINUX[*] #Deleting two arrays
