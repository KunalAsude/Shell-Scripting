#!/bin/bash

create(){
	mkdir demo
}
if ! create; then
	echo "The same Directory Already Exists"
	exit 1

fi

echo "The New Dicrectory is Created..."

