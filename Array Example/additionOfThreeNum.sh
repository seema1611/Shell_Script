#! /bin/bash -x

#Program to findout sum of three integer
#Declaration of Array
declare -a Numbers

#function to findout the three integer whose addition is zero in the array
function additionOfThree() {

	len=$1
	for(( i=0; i<$(($len-2)); i++ ))
	do
		for(( j=$i+1; j<$(($len-1)); j++ ))
		do
			for(( k=$i+2; k<$len; k++ ))
			do
		        	if [ $((${Numbers[$i]} + $((${Numbers[$j]} + $((${Numbers[$k]})) -eq 0 ]
				then
					echo "${Numbers[$i]} $((${Numbers[$j]} $((${Numbers[$k]}"
				fi
			done
		done
	done
}
Numbers=(-87 45 20 12 56 78 -36 51 36 62)
len=${#Numbers[@]}
additionOfThree $len

