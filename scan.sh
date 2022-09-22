while read line; do
	# run a loop that reads each line from the file given below
	# echo $line -> prints the line
	# awk -F --> the way awk splits an input record --> returns text between matching symbols
	# "55"= the desired pattern - '{prints the second column}'
	#-F is a field seperator 
	echo $line | awk -F"55=" '{print$2}' | awk '{print $1}'
done < filename

exit 0
