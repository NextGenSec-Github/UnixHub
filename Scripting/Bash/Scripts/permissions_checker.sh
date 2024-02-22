#!/bin/bash

# Check permission of sensitive files

# Define sensitive files

echo "Specify the file you would like to check:"

read FILE

#  Check permissions

for file in $FILE; do
        permissions=$(ls -l $file | awk '{print $1}')
        echo "Permissions for $file: $permissions"
done
