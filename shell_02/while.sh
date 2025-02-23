#!/bin/bash

num=0

while ((num % 2 == 0 && num <= 10))
do
	echo "num : $num"
	((num+=2))
done
