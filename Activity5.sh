#! /bin/bash

result=0

echo "Input number: "
read number


until [ $number -eq 0 ]
do
	result=$(($result*10))
	result=$(($result+$(($number%10))))
	number=$(($number/10))
done

echo "Number reverse: $result"

exit 0
