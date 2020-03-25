#!/bin/bash -x

#program of Gambler to findout wins and losses
wins=0
trial=0
goal=200
stack=100

while [[ $stack -gt 1 && $stack -lt $goal ]]
do
        bets=$(( RANDOM % 9))
        if [ $bets -eq 1 ]
        then
                ((stack++))
                ((wins++))
        else
                ((stack--))
        fi
        ((trial++))
done
echo "Person won "$wins" times"
echo "Number of trials "$trial" times"


