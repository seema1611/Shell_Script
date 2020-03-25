#! /bin/bash -x

#Program to Findout Year is Leap or not
read -p "Enter the Year we want to findout is Leap or Not: "$year
isLeapYear="Yes"

if [ $(( $year % 4)) -ne 0 ]
then
	isLeapYear="No"
else
	isLeapYear="Yes"
fi

echo $isLeapYear
