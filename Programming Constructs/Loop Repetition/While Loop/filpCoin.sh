#!/bin/bash -x

#Program to findout heads or tails upto 11
heads=0
tails=0

#Checking Condtion untill not reached 11 is reached
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
        coin=$(( $RANDOM % 5 ))
        if[ $coin -eq 1 ]
        then
                ((heads++))
        else
                ((tails++))
        fi
done

echo "Heads: " $heads
echo "Tails: " $tails
