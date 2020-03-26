#! /bin/bash

#Program to check NUmber is palindrome or not

#Check here Number is Palindrome Or Not
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
	inputNumber=$1
        palindrome="$(isPalindrome $inputNumber)"

        if [ $inputNumber -eq $palindrome ]
	then
	      echo $inputNumber "Number is Palindrome"
	else
	      echo $inputNumber "Number is not Palindrome"
	fi
}

read -p "Enter two number: " number1 number2
isChecking $number1
isChecking $number2
