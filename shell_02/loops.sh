#!/bin/bash


<< comments

Create folders by accepting names and start and end from arguments

comments

for (( num = $1 ; num <= $2 ; num++))
do
	mkdir "$3$num"
done

