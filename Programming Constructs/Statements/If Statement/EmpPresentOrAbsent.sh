#!/bin/bash -x

# Simple Program to FindOut Employee is Present Or Not
isPresent=1;				#Assign 1 to Employee is Present

randomCheck=$((RANDOM % 2 ))		#Find Random here and use in below code for checking
if [ $isPresent -eq $randomCheck ];	#Condition check here
then
        echo "Employee is Present";
else
        echo "Employee is Absent";
fi

