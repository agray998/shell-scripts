#!/bin/bash
echo "Enter website URL:"
read website_url
curl -s ${website_url} > response.txt

if [ -s response.txt ]; then
  echo "Yes, this exists"
else
  echo "Nope, this doesn't exist"
fi
rm response.txt