#! /bin/bash -x

#To check repeated numbers in 0-100 Range

function isPalindrome() {
        tempVariable=$1
        reverse=0
        while [ $tempVariable -gt 0 ]
        do
                remainder=$(($tempVariable % 10))
                reverse=$(( $(($reverse*10)) + $remainder ))
                tempVariable=$(($tempVariable / 10))
        done
        echo $reverse
}


function isChecking() {

        if [ $1 -eq $2 ]
        then
              isPalindrome=1
        else
              isPalindrome=0
        fi
	echo $isPalindrome
}

count=0
for (( i=0; i<=100; i++ ))
do
	reverse=$( isPalindrome $i )
	palindrome=$( isChecking $i $reverse )

	if [ $palindrome -eq 1 ]
	then
		RepeatedDigit[ ((count++)) ]=$i
	fi
done
echo ${RepeatedDigit[@]}
