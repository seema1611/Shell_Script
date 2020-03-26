#! /bin/bash -x

#Array declaration
declare -a factors

#Program to findout factors of prime numbers
function isPrime () {
	k=0

	for(( i=2; i<=number; i++ ))
	do
		isCheck=1
		for(( j=2; j<i; j++ ))
        	do
			if [ $(($i % $j)) -eq 0 ]
			then
				isCheck=0
			fi
		done

		if [ $isCheck -eq 1 ] && [ $(($number % $i)) -eq 0 ]
		then
			factors[((k++))]=$i
		fi
	done
}
echo "Enter the numbers:"
read number
isPrime
echo ${factors[@]} ":is the Prime number factors"
