#!/bin/bash

#Program to findout first number is prime and then palindrome and last palindrome is also a prime

#Check here number is Prime or NOT
function isPrime() {
	number=$1
	check=1
	for (( i=2; i<$number; i++ ))
	do
		if [ $(($number % $i)) -eq 0 ]
		then
			check=0
		fi
	done
	echo $check
}


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


#Check here number is Palindrome and OR a Prime both condition
function isPrimePalindrome() {
	inputNumber=$1

	prime="$(isPrime $inputNumber)"
	if [ $prime -eq 1 ]									#check here the number is prime or NOT
	then
		palindrome="$(isPalindrome $inputNumber)"
		if [ $inputNumber -eq $palindrome ]						#Check here the number is Palindrome or NOT
		then
			#Here first check number is prime then palindrome or not palindrome means reverse of this number because of that it is PalindromePrime
			echo $inputNumber ":is a prime and palindrome both"

		else
			echo $inputNumber ":is a Prime but NOT Palindrome"
		fi										#End of second if Loop

	else
		echo $inputNumber ":is NOT a Prime number"
	fi											#End of first if Loop
}

echo "Enter the numbers: "
read number
isPrimePalindrome $number
