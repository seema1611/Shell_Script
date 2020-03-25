#!/bin/bash

#Program to convert digit into day
read -p "Enter the Number: " number
Word="Enter the Single digit number"

#Initialize cases
case $number in
                1)
                        word=One
                         ;;
                10)
                        word=Ten
                         ;;
                100)
                        word=Hundred
                         ;;
                1000)
                        word=Thousand
                         ;;
                10000)
                        word="Ten Thousand"
                         ;;

esac
echo "Entered value in Word: "$word


