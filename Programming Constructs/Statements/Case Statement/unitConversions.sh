#!/bin/bash

#Program to findout Conversion
echo "Enter 1 Convert Feet into Inch"
echo "Enter 2 Convert Feet into Meter"
echo "Enter 3 Convert Inch into Feet"
echo "Enter 4 Convert Meter into Feet"

read conversion
echo "Enter number you want to convert "
read number

#initialize Cases
case $conversion in
        1)
                convert=$(( $number * 12 ))
                  ;;
        2)
                convert=$(( $number * 1000 ))
                convert=$(( $convert * 3281 ))
                  ;;
        3)
                convert=$(( $number / 12 ))
                rem=$(( $number % 12 ))
                convert="$convert feet $rem inches"
                  ;;
        4)
                convert=$(( $number * 3281 ))
                convert=$(( $answer  / 1000 ))
                  ;;

esac
echo $convert
