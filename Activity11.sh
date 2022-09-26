#! /bin/bash

function ReverseSort(){
	local -n Array=$1
	
	for i in ${!Array[@]} 
	do
		for ((j=$i+1;j<$2;j++))
		do
			if [[ ${Array[$j]} -gt ${Array[$i]} ]]
			then
				temp=${Array[$j]}
				Array[$j]=${Array[$i]}
				Array[$i]=$temp
			fi
		done
	done
}

if [[ -f "Numbers.txt" ]]
then
	rm "Numbers.txt"
fi

touch "Numbers.txt"

echo 5 6 3 7 4 4 9 6 7 9 8 2 3 6 4 5 1 1 3 10 12 > Numbers.txt
NonDupArray=()
size=0
readarray -t Nums < Numbers.txt
echo "Before: ${Nums[@]}"

#DupRemover
#---------------------------------------------
for i in ${Nums[@]}
do
	#echo $i 
	if [[ ! ${NonDupArray[@]} =~ $i ]]
	then
		NonDupArray[size]=$i
		((size++))
	fi
done
#---------------------------------------------
echo "After: ${NonDupArray[@]}"

#ReverseSorter
#----------------------------------
ReverseSort NonDupArray size
#

echo "Final: ${NonDupArray[@]}"

exit 0
