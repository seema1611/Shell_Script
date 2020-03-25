#!/bin/bash

#Program to convert digit into word
read -p "Enter the Number: " number
Word="Enter the Single digit number"

#Initialize Cases
case $number in
                0)
                        word=Zero
                         ;;
                1)
                        word=One
                         ;;
                2)
                        word=Two
                         ;;
                3)
                        word=Three
                         ;;
                4)
                        word=Four
                         ;;
                5)
                        word=Five
                         ;;
                6)
                        word=Six
                         ;;
                7)
                        word=seven
                         ;;
                8)
                        word=Eight
                         ;;
                9)
                     word=Nine
                         ;;


esac
echo "The word is: "$word

