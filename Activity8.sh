#! /bin/bash

size=0
number=0
Array=(0,0,0,0,0,0,0,0,0,0)

echo "Please enter 5-10 numbers (input 'D' when done): "

while [[ size -lt 4 ]] || [[ size -lt 10 ]] 
do
	read number

	if [[ $number == "D" ]]
	then 
		break
	fi

	if [[ $number =~ [0-9] ]]
	then
		((size++))
		Array[(($size-1))]=$number
	else
		echo "invalid value::please input again:"
	fi
done

echo ${Array[@]} 

exit 0
