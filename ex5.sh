#!/bin/bash
echo "Enter name of file:"
read name
echo "Enter title:"
read title
cd ~

if [ -d "$(date "+%B-%Y")" ]; then
cd $(date "+%B-%Y")
else
mkdir $(date "+%B-%Y") && cd $_
fi

touch ${name}$(date "+%d").md
echo "## ${title} Date: $(date "+%D")" >> ${name}$(date "+%d").md
vim ${name}$(date "+%d").md