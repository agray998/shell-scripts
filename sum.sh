#!/bin/bash
echo "Enter an array of numbers:"
read -a numlist
res=0

for num in "${numlist[@]}"; do
res=$(($res + $num))
done

echo "Sum is: $res"
