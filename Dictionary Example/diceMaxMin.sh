#! /bin/bash -x

#Program to findout minmum and maximum
#Declaration
declare -A diceDictionary

#Constants
MAX_TIMES=10

#Variable
oneNum=0
twoNum=0
threeNum=0
fourNum=0
fiveNum=0
sixNum=0

#Findout roll die
function rollDie () {
	 rollDie=$((RANDOM%6+1))
}

#function to store the generated dice
function storeResultInTheDictionary() {
	case $rollDie in
	1)
	   diceDictionary[$rollDie]=$((++oneNum))
	   ;;
	2)
	   diceDictionary[$rollDie]=$((++twoNum))
	   ;;
	3)
           diceDictionary[$rollDie]=$((++threeNum))
           ;;
        4)
           diceDictionary[$rollDie]=$((++fourNum))
           ;;
	5)
	   diceDictionary[$rollDie]=$((++fiveNum))
	   ;;
	6)
	   diceDictionary[$rollDie]=$((++sixNum))
	   ;;
	esac
}

#function to findout Maximum Times dice
function getMaxTimes() {
	times=${diceDictionary[1]}

	for(( count=1; count<=${#diceDictionary[@]}; count++ ))
        do

                if[ ${diceDictionary[$count]} -gt $times ]
                then
                         times=${diceDictionary[$count]}
                fi
        done
        echo $times
}

#To findout MinMum times dice
function getMinTimes() {
	times=${diceDictionary[1]}

        for(( count=1; count<=${#diceDictionary[@]}; count++ ))
        do

                if[ ${diceDictionary[$count]} -lt $times ]
                then
                        times=${diceDictionary[$count]}
                fi
        done
        echo $times
}

#To findout maximum die number
function getMaxDieNumber () {
        for(( count=1; count<=6; count++ ))
        do
                if [ ${diceDictionary[$count]} -eq maxTimes ]
                then
                        echo $count
                fi
        done
}

#to findout Minimum die number
function getMinDieNumber () {
        for(( count=1; count<=6; count++ ))
        do
                if [ ${diceDictionary[$count]} -eq minTimes ]
                then
                        echo $count
                fi
        done
}

#To check here each number is not bigger than 10
function rollDieStoreInDictionary() {
	while [[ $oneNum -ne MAX_TIMES && $twoNum -ne MAX_TIMES && $threeNum -ne MAX_TIMES && $fourNum -ne MAX_TIMES 
					&& $fiveNum -ne MAX_TIMES && $sixNum -ne MAX_TIMES ]]
	do
		rollDie
		storeResultInTheDictionary
	done
}

rollDieStoreInDictionary
maxTimes=$(getMaxTimes)
minTimes=$(getMinTimes)
maxDieNumber=$(getMaxDieNumber)
minDieNumber=$(getMinDieNumber)
echo "(MAXIMUM)"
echo "Die Number:" $maxDieNumber
echo "Times:     " $maxTimes
echo "(MINIMUM)"
echo "Die Number:" $minDieNumber
echo "Times:     " $minTimes
