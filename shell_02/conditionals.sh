#!/bin/bash

read -p "Enter the Player : " player
read -p "Enter the no Of Centuries : " centuries

if [[ $player == "Virat" ]];
then
	echo "Name of The Player is virat"
elif [[ $centuries -ge 50 ]]
then 
	echo "He is Virat Kohli"
else
	echo "You Entered the Wrong Player"

fi
