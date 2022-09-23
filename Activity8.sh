#! /bin/bash

size=0
number=0
Array=(0,0,0,0,0,0,0,0,0,0)

echo "Please enter 5-10 numbers (input 'D' when done): "

while [[ size -lt 5 ]] || [[ size -lt 10 ]] 
do
	read number

	if [[ $number == "D" ]] && [[ size -gt 4 ]]
	then 
		break
	fi

	if [[ $number =~ [0-9] ]]  
	then
		((size++))
		Array[(($size-1))]=$number
		echo "next value: "
	else
		echo "invalid value::please input again:"
	fi
done

#echo ${Array[@]} 

echo $(product Array)

exit 0
