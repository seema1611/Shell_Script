#!/bin/bash -x

#Program Of FindOut Minimum And Maximum Random number

#Generate 3Digit Random Number
RandomFirst=$((RANDOM % 500 + 100));
RandomSecond=$((RANDOM % 500 +100));
RandomThird=$((RANDOM % 500 +100));
RandomFour=$((RANDOM % 500 +100));
RandomFive=$((RANDOM % 500 +100));

echo $RandomFirst
echo $RandomSecond
echo $RandomThird
echo $RandomFour
echo $RandomFive

max=$RandomFirst;
min=$RandomFirst;

#Find the Largest Random element

if   [ $RandomSecond -gt $max ]
then
        max=$(($RandomSecond))
fi

if   [ $RandomThird -gt $max ]
then
        max=$(($RandomThird))
fi

if   [ $RandomFour -gt $max ]
then
        max=$(($RandomFour))
fi

if   [ $RandomFive -gt $max ]
then
        max=$(($RandomFive))
fi

echo "The Maximum Number is: "$max;

#Find the smallest Random Number

if   [ $RandomSecond -lt $min ]
then
        min=$(($RandomSecond))
fi

if   [ $RandomThird -lt $min ]
then
        min=$(($RandomThird))
fi

if   [ $RandomFour -lt $min ]
then
        min=$(($RandomFour))
fi

if   [ $RandomFive -lt $min ]
then
        min=$(($RandomFive))
fi

echo "The Minimum Number is: "$min;
