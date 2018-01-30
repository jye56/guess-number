#!/usr/bin/env bash
# File: guessinggame.sh

# define a function to get the number of files in the current directory
function getNumfiles {
	ls -l | wc -l > numoffiles.txt
	numf=$(egrep "^[0-9]+" numoffiles.txt)
	rm numoffiles.txt
	echo $numf
}

# main program

# get the number of files in the current directory by calling function getNumfiles
numfiles=$(getNumfiles)

# while loop for the interactive guessing
while [[ $response -ne $numfiles ]]
do
	echo "Please guess the number of files in the directory: "
	read response

	if [[ $response -gt $numfiles ]]
	then
		echo "The guess is too high"
	elif [[ $response -lt $numfiles ]]
	then
		echo "The guess is too low"
	else 
		echo "You are correct!!!"
	fi
done
