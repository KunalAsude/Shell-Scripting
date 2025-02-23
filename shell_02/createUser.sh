#!/bin/bash

read -p "Enter Your UserName : " username

echo "The Entered UserName is $username"

sudo useradd -m $username


echo "The New User added..."
