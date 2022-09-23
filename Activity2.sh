#! /bin/bash

#checks to see if directory exists
#if directory exits - it is deleted 
#--------------------------
if [ -d "tempDir" ]
then 
	rm -rf tempDir
fi
#--------------------------

#delcares all necessary variables
#--------------------------
RANDOM=$$ # gives pid of current process which is suedo random
nof=$(($((RANDOM%10))+1)) # uses seed to return vaule between [1-10] 
#--------------------------

#makes new directory
#--------------------------
mkdir tempDir
#--------------------------

#for loop that creates files based on random number 'nof'
for ((i=1; i<$nof; i++))
do
	touch "tempDir/file$i.sh" #creates file with suffix $i <- number
done

#splits string into array based on white spaces
#string="`ls tempDir/`"
readarray -d   -t filenames<<<"`ls tempDir/`" 

#traverses array
for i in ${filenames[@]}
do
	#renames file by moving it to the same location with different name
	#${i::3} substring excluding last 3 characters
	mv "tempDir/$i" "tempDir/${i::-3}$(date +"%y-%m-%d").sh"	
done

exit 0
