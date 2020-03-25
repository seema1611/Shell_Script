#!/bin/bash

#Program to findout Number is prime or not
echo "Enter the Number"
read number

check=isPrime
for (( i=2; i<$number; i++ ))
do
        if [ $(($number % i)) -eq 0 ]
        then
                check=isnotPrime
        fi
done
echo $check
