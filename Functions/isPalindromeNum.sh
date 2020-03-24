#! /bin/bash -x

#Program to check NUmber is palindrome or not
echo "Enter the two numbers"
read number1 number2

function isPalindrome() {
rev= " "

while [ $number1 -gt 0 ]
do
   rem=$(( $number1 % 10 ))
   rev="$rev$rem"
   number1=$(( $number1 / 10 ))
done

}

result ="$( isPalindrome $rev )"
if [ $result -eq $number2 ]
then
      echo "Number is Palindrome"
else
      echo "Number is not Palindrome"
fi

