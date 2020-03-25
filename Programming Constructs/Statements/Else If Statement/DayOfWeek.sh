#! /bin/bash -x

#Program of Covert number into Day
read -p "Enter the Day: " number
day="Enter day between 1 to 7"

if [$number -eq 1 ];
then
	day="Sunday"
elif [$number -eq 2 ];
then
	day="Monday"
elif [$mumber -eq 3 ];
then
	day="Tuesday"
elif [$number -eq 4 ];
then
	day="Wednesday"
elif [$number -eq 5 ]
then
	day="Thursday"
elif [$number -eq 6 ]
then
	day="Friday"
elif [$number -eq 7 ]
then
	day="Saturday"
fi
echo $day
