#!/bin/bash


function is_goat() {
if [[ $1 == "Virat" ]];
then
	echo "$1 is Goat..."
else
	echo "$1 is not a Goat"
fi
}
is_goat "Virat"
is_goat "MisterX"
