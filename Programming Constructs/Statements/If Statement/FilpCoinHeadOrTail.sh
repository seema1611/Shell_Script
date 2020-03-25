#!/bin/bash -x

#program to flip the coin and check Head or Tail
coin=$((RANDOM % 9))

if [ $coin -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi
