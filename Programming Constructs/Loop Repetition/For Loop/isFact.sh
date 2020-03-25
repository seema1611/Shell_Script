#!/bin/bash -x

#Program to Findout Factorial of Given Number
echo "Enter the Number"
read number
fact=1

#Initialize For Loop
for(( i=1; i<=$number; i++ ))
do
        fact=$(( $fact * $i ))
done                                            #End Of For Loop
echo "Factorial Of Given Number is:"$fact

