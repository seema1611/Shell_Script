#! /bin/bash

#Array Declaration
declare -A birthDayDictionary

#Constants
INDIVIDULAS=50

function isBirthYear () {
	echo $(( RANDOM%2+1992 ))
}

function isBirthMonth() {
	echo $(( RANDOM%12+1 ))
}

function getMonthInTheWords() {
	case $birthMonth in
		1)
			monthInWords="Jan"
			;;
                2)
                        monthInWords="Feb"
			;;
                3)
                        monthInWords="Mar"
			;;
                4)
                        monthInWords="Apr"
			;;
                5)
                        monthInWords="May"
			;;
                6)
                        monthInWords="Jun"
			;;
                7)
                        monthInWords="Jul"
			;;
                8)
                        monthInWords="Aug"
			;;
                9)
                        monthInWords="Sept"
			;;
                10)
                        monthInWords="Oct"
			;;
		11)
		        monthInWords="Nov"
			;;
		12)
			monthInWords="Dec"
			;;
	esac
}

function putInDictionary () {
	getMonthInTheWords
	birthday="($monthInWords-$birthYear)"
	birthDayDictionary[$birthMonth]="${birthDayDictionary[$birthMonth]} $birthday "
}

function isBirthdayInTheSameMonth() {
	for((count=1; count<=$INDIVIDULAS; count++ ))
	do
		birthYear=$(isBirthYear)
		birthMonth=$(isBirthMonth)
		putInDictionary
	done
        for(( count=1; count<=12; count++ ))
        do
                echo $count=${birthDayDictionary[$count]}
        done

}
isBirthdayInTheSameMonth
