#!/bin/bash

# This script migrates domain routes from one domain to another in a SQL file.
# Example of usage: ./db-migrator.sh input_file.sql old_domain new_domain output_file.sql
# Check if the correct arguments were passed
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 input_file.sql old_domain new_domain output_file.sql"
    exit 1
fi

# Assign arguments to variables
input_file=$1
old_domain=$2
new_domain=$3
output_file=$4

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "The input file does not exist: $input_file"
    exit 1
fi

# Replace all instances of the old domain with the new domain
sed "s|$old_domain|$new_domain|g" "$input_file" > "$output_file"

# Check if the replacement was successful
if [ $? -eq 0 ]; then
    echo "Domain routes have been successfully migrated from $old_domain to $new_domain."
    echo "The transformed file has been saved to: $output_file"
else
    echo "There was an error trying to migrate the domain routes."
    exit 1
fi
