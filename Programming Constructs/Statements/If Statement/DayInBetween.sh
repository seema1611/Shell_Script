#! /bin/bash -x

#Program to Findout the day between 20 March to 20 June.

#User Input
read -p "Enter the Month: " month
read -p "Enter the Day: " day

dateIsValid=1
inBetweenDays="No"

if [[ $month -gt 12 || $month -lt 1 || $day -gt 31 || $day -lt 1 ]]
then
	dateIsValid=0
fi

if [[ $dateIsValid -eq 1 ]]
then
	if [[ $month -ge 3 && $month -le 6 ]]
	then
		inBetweenDays="Yes"
	fi

	if [[ $month -eq 3 && $day -ge 20 ]]
	then
		inBetweenDay="Yes"
	fi

	if [[ $month -eq 7 && $day -le 20 ]]
        then
                inBetweenDay="Yes"
        fi
fi
# Output After Check All Condition
echo "Entered date is Valid between 20 March to 20 June: "$inBetweenDays
