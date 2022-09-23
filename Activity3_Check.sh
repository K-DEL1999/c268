#! /bin/bash

d=$(date +"%y-%m-%d")
c=1
count=0

echo "Input Lottery numbers you chose"
read -r Pick1 Pick2 Pick3 Pick4 Pick5 Pick6

while [[ -z "$Pick6" ]]
do
	echo "Must input 6 numbers"	
	read Pick1 Pick2 Pick3 Pick4 Pick5 Pick6
done

for i in $Pick1 $Pick2 $Pick3 $Pick4 $Pick5 $Pick6 
do
	check=$(sed -n "${c}p" "LotteryFile$d.txt")
	if [ "$check" == "$i" ]
	then
		((count++))
		echo "Match $check = $i"
	else
		echo "Did not Match $check = $i"
	fi
	((c++))	
done

echo "number of matches $count"

exit 0
