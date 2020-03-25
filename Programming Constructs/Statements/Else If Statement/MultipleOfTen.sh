#! /bin/bash -x

#Program to Convert Number into it's Places
read -p "Enter Number: " Number
word="Enter number in multiple of 10"

echo word

if [ $Number -eq  1 ];
then
	word="One"

elif [ $Number -eq 10 ];
then
	word="Ten"

elif [ $Number -eq 100 ];
then
	word="Hundred"

elif [ $Number -eq 1000 ];
then
	word="Thousand"

elif [ $Number -eq 10000 ];
then
	word="Ten Thousand"
fi
echo $word
