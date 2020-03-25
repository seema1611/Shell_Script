#! /bin/bash -x

#Program to Findout Prime Number Between give Range
echo "Enter Starting number"
read start
echo "Enter Ending number"
read end

#Initialize first For Loop
for (( i=start; i<=end; i++ ))
do
        checkPrime=1
        #Initialize second For Loop
        for(( j=2; j<=$(($i/2)); j++ ))
        do
                if [ $(($i % $j )) -eq 0 ]
                then
                        checkPrime=0
                fi                              #End of If Statement
        done                                    #End of Second For Loop
        if [ $checkPrime -eq 1 ]
        then
                echo "Prime Number are:" $i
        fi
done                                            #End of First For Loop

