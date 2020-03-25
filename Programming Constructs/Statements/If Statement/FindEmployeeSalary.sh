#!/bin/bash -x

#Program to FindOut Salary of Employee Depending upon Hours basis
isPresent=1;					#Assign 1 to Employee is Present

randomCheck=$((RANDOM % 2 ));			#Findout RandomCheck here And use in Check Condition

if [ $isPresent -eq $randomCheck ];		#Condition Here
then
        empRatePerHr=20;
        empHrs=10;
        salary=$(($empHrs *  $empRatePerHr));	#Calculate Salary Here
else
        echo "Salary=0";
fi

