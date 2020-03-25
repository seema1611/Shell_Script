#!/bin/bash -x

#Program to Findout the table of power two
echo "Enter the Number"
read number

power=1
i=0

while [ $i -le $number ]
do
        #Checking Calculated Power is less than 256
        if [ $power -le 256 ]
        then
                echo $power
                power=$(($power*2))
        fi
        ((i++))
done
