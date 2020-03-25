#!/bin/bash -x

#Program to show simple While Loop work
count=1
while [ $count != 10 ]
do
        echo $count
        ((count++))
done

