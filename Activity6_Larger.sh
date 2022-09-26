#! /bin/bash

if [[ $1 =~ ^(-)?[0-9]+$ ]]
then
	if [[ $1 -gt $2 ]]
	then
		echo True
	else
		echo False
	fi
else 
	echo "Incorrect Input"
fi

exit 0
