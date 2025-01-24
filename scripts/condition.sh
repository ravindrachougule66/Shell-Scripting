#!/bin/bash
#
#

<<disclaimer
This is just info
disclaimer

function place()
{
read -p "$1 lived in : " home
read -p "$1 ready to relocate to : " city

if [[ $home == "pune" ]];
then
	echo "This is $1's home $home"
elif [[ $city == "goa" ]];
then
	echo "$1 will be on trip of $city"
else
	echo "$home is not belongs to $1"
fi
}

place "Rahul"

