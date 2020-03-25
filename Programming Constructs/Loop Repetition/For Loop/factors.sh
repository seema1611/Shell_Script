#!/bin/bash -x

#Program to findout the Factors of given number
echo "Enter the number"
read number

#Initialize Loop
for(( i=1; i<=$(($number/2)); i++ ))
do
        if [ $(($number % $i )) -eq 0 ]
        then
                echo $i
        fi                                      #End Of If Statement
done                                            #End Of Loop
