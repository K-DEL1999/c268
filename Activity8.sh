#! /bin/bash

function productOfArray(){ #multiplies all values in array together
	arr=("$@") 
	product=1
	for i in ${arr[@]}
	do 
		((product*=$i)) #product = product * $i
	done

	echo $product #return result
}

function sumOfArray(){ #adds all values in array together
	arr=("$@")
	sum=0
	for i in ${arr[@]}
	do 
		((sum+=$i)) #sum = sum + $i
	done

	echo $sum #return result
}

size=0 #number of elements inputted
number=0 #input holder
Array=() #will store inputs

echo "Please enter 5-10 numbers (input 'D' when done): "

#loop that gets input and verifies values are integers
while [[ size -lt 5 ]] || [[ size -lt 10 ]] #ensures more than 4 elements are inputted but less than 10 
do
	read number #read input

	if [[ $number == "D" ]] && [[ size -gt 4 ]] #if D is entered and number of values is > 4 we break loop
	then 
		break
	fi
	
	#if [[ $number =~ [0-9] ]] && [[ ! $number =~ [a-z] ]] && [[ ! $number =~ [A-Z] ]] && [[ ! $number =~ [[:punct:]] ]] #if value is a number
	if [[ $number =~ ^(-)?[0-9]+$ ]] #checks if value is an integer
	then
		((size++))
		Array[(($size-1))]=$number
		echo "next value: "
	else
		echo "invalid value::please input again:"
	fi
done

#FINDS PRODUCT SUM AND AVERAGE-----------#
product=$(productOfArray "${Array[@]}") #calls function that calculates product
sum=$(sumOfArray "${Array[@]}") #calls function that calculates sum
average=$((sum / size)) #gets result of division between sum and number of elements
#----------------------------------------#

#CALCULATE MIN AND MAX---------------#
min=${Array[0]} #initialize min 
max=${Array[0]} #initialize max

for i in ${Array[@]}
do
	(( i>max )) && max=$i #if i>max evaluates to true then assign max new val
	(( i<min )) && min=$i #if i<min evaluates to true then assign min new val 
done
#------------------------------------#

#OUTPUT RESULTS
echo "|---Array---|"
echo "${Array[*]}"
echo "|-operations-|"
echo "product: $product"
echo "sum: $sum"        
echo "average: $average"
echo "min: $min"        
echo "max: $max"    
echo "|------------|"

exit 0
