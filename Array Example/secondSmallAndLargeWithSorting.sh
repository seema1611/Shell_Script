#! /bin/bash

#Program to findout second Largest and smallest element in the array with sorting

#Array Declaration
declare -a Numbers

#Function to read and store random value
function getRandom() {
	count=1
	while [ $count != 10 ]
	do
		i=$((RANDOM % 900 +100))
		Numbers[((count++))]=$i
	done
	echo ${Numbers[@]}
}

#to sort Array
function sortingArray () {

	for((j=0; j<10; j++))
	do
		echo ${Numbers[$j]}
	done | sort -k1 $1 | head -2 |tail -1
}

#Function call
getRandom
echo "Second Largest element in the array:" $(sortingArray -rn)
echo "Second Smallest element in the array:" $(sortingArray -n)

