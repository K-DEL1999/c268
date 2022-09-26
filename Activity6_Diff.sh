#! /bin/bash

if [[ $1 =~ ^(-)?[0-9]+$ ]]
then
	if [[ ]]
	echo  "$1 - $2 = $(($1-$2))"
else 
	echo "Incorrect Input"
fi

exit 0
