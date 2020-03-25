#!/bin/bash -x

#Program Of Power two
echo "Enter the number: "$number

read number
power=1

#Initialize For Loop
for(( i=0; i<=$number; i++ ))                   #Condition
do
        echo $power
        power=$(( $power * 2 ))                 #output
done
