#!/bin/bash

result=`sort $1 | uniq -u` #getting the lines that are not duplicated in result variable
>$1 #making the same file empty
echo $result >>$1 #writing the non duplicated lines to file
gedit $1 #opens the file
