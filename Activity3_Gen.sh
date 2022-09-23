#! /bin/bash

d=$(date +"%y-%m-%d")
echo $d

if [ -f "LotteryFile$d.txt" ]
then
	echo File exits!	
	rm "LotteryFile$d.txt"
fi

touch "LotteryFile$d.txt"

for ((i=0; i<5; i++))
do
	echo $(((($RANDOM%50))+1)) >> LotteryFile$d.txt 	
done

echo $(((($RANDOM%10))+1)) >> LotteryFile$d.txt 	

exit 0
