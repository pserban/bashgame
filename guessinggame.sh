#!/bin/bash

# File: guessinggame.sh

function CompareNumbers {
    if [[ $1 -eq $2 ]]
    then
	echo -n "0"
    elif [[ $1 -gt $2 ]]
    then
	echo -n "1"
    else
	echo -n "2"
    fi	    
}

# Load the number of files from the current directory
nr_of_files=$(ls -al $PWD | grep '^-' | wc -l)

echo $nr_of_files

while [[ true ]]
do
    echo -n "Guess number of files (hidden included) in the current directory: "
    read guessed_nr
    compare_rez=$( CompareNumbers $guessed_nr $nr_of_files )
    case $compare_rez in
	0)
	    echo "You guessed the number of files which is $nr_of_files"
	    break
	    ;;
	1)
	    echo "The guessed number $guessed_nr is bigger than the number of files"
	    ;;
	2)
	    echo "The guessed number $guessed_nr is smaller than the number of files"
	    ;;
    esac
done

