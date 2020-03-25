#!/bin/bash -x

#Program to convert digit into day
read -p "Enter the Number: " number
day="Enter the Single digit number"

#Initialize cases
case $number in
                1)
                        day=Sunday
                         ;;
                2)
                        day=Monday
                         ;;
                3)
                        day=Tuesday
                         ;;
                4)
                        day=Wednesday
                         ;;
                5)
                        day=Thrusday
                         ;;
                6)
                        day=Friday
                         ;;
                7)
                        day=Saturday
                         ;;

esac
echo "Entered digit in day: "$day

