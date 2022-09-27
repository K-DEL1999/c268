#! /bin/bash

if [[ -f "Numbers.txt" ]]
then
	rm "Numbers.txt"
fi

touch "Numbers.txt"

Array=(5 6 3 7 4 4 9 6 7 9 8 2 3 6 4 5 1 1 3 10 12)

for i in ${Array[@]}
do
	echo $i >> Numbers.txt
done

cat Numbers.txt | sort -rn | uniq

exit 0
