#!/usr/bin/env bash
# File: guessinggame.sh

guess=-1
nr_files=$(ls -p | grep -v / | wc -l)

function guessing {
while [[ $guess -ne $nr_files ]]
do

	echo "How many files are in the current directory? Please enter your guess:"
	read guess

	if [[ $guess -lt $nr_files ]]
	then
		echo "Your guess it is too low"
	elif [[ $guess -gt $nr_files ]]
	then
		echo "Your guess it is too high"
	else
		echo "Congratulate, you have guessed!"
	fi

done
}

guessing
