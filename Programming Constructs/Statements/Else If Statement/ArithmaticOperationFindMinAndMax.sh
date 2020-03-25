#!/bin/bash -x

#Program to Findout Maximum and minimum from arithmatic Opration
read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

#First Addition then Multiply
p=$(( $a + $b ))
AddMulti=$(( $p * $c))
echo $AddMulti

#First Addition then Division
p=$(( $c + $a ))
AddDiv=$(( $q / $b ))
echo $AddDiv

#First Modulus then Addtion
r=$(( $a % $b))
ModAdd=$(( $r + $c))
echo $ModAdd

#First Multiple then Addition
s=$(( $a * $b ))
MultiAdd=$(( $s + $c ))
echo $MultiAdd

max=$AddMulti
min=$AddMulti

#Find the Largest element

if   [ $AddDiv -gt $max ]
then
        max=$(($AddDiv))
fi

if   [ $ModAdd -gt $max ]
then
        max=$(($ModAdd))
fi

if   [ $MultiAdd -gt $max ]
then
        max=$(($MultiAdd))
fi

echo "The Maximum Number is: "$max;

#Find the smallest Number

if   [ $AddDiv -lt $min ]
then
        min=$(($AddDiv))
fi

if   [ $ModAdd -lt $min ]
then
        min=$(($ModAdd))
fi

if   [ $MultiAdd -lt $min ]
then
        min=$(($MultiAdd))
fi
echo "The Minimum Number is: "$min
