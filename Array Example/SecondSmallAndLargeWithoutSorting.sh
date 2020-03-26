#! /bin/bash 

#Program to findout second Largest and smallest element in the array with sorting

#Array Declaration
declare -a Numbers

#Constants
MIN_VALUE=100
MAX_VALUE=999

#function for generating random number and insert into array
function getRandom() {
        count=1
        while [ $count != 10 ]
        do
                i=$((RANDOM % 900 +100))
                Numbers[((count++))]=$i
        done
        echo ${Numbers[@]}
}

#function to findout second largest element
function secondLargestElement () {
	first=$1
	second=$1
	for(( i=0; i<${#Numbers[@]}; i++))
	do
		if [ ${Numbers[$i]} -gt $first ]
		then
			second=$first
			first=${Numbers[$i]}
	        elif [ ${Numbers[$i]} -gt $second ]
                then
                        second=${Numbers[$i]}
                fi
	done
	echo $second

}

function secondSmallestElement () {
        first=$1
        second=$1
        for(( i=0; i<${#Numbers[@]}; i++))
        do
                if [ ${Numbers[$i]} -lt $first ]
                then
                        second=$first
                        first=${Numbers[$i]}
                elif [ ${Numbers[$i]} -lt $second ]
                then
                        second=${Numbers[$i]}
                fi
        done
        echo $second
}

getRandom
echo ${Numbers[@]}

secondLargest="$( secondLargestElement $MIN_VALUE )"
echo "Second Largest Element in the array:" $secondLargest

secondSmallest="$( secondSmallestElement $MAX_VALUE )"
echo "Second Smallest Element in the array" $secondSmallest
