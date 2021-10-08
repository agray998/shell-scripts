#!/bin/bash
echo "Enter filename:"
read filename
startdir=$(pwd)
cd ~
value=$(find "$(cd ..; pwd)" -name ${filename} | head -n 1)

if [ ${value} ]; then
echo "Exists. Path = ${value}"
elif [ -d ${value} ]; then
echo "Exists. Path = ${value}"
else
echo "Does not exist"
fi

cd $startdir