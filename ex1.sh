#!/bin/bash
echo "Enter your username:"
read username

if [ $username == $USER ]; then
echo "You are the current logged in user"
else
echo "You are not logged in"
fi