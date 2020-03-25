#!/bin/bash -x

#Program to convert Number digit into Word
read -p "Enter the Number you want to convert into Word: " number
word="Enter the single digit number"

if   [ $Number -eq 0 ];
then
	word=Zero

elif [ $Number -eq 1 ];
then
	word=One

elif [ $Number -eq 2 ];
then
        word=Two

elif [ $Number -eq 3 ];
then
        word=Three

elif [ $Number -eq 4 ];
then
        word=Four

elif [ $Number -eq 5 ];
then
        word=Five

elif [ $Number -eq 6 ];
then
        word=Six

elif [ $Number -eq 7 ];
then
        word=Seven

elif [ $Number -eq 8 ];
then
        word=Eight

elif [ $Number -eq 9 ];
then
        word=Nine
fi
echo "Entered Number into Word: " $word
