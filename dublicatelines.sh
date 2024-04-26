
#!/bin/bash

# Usage: ./print_duplicates.sh <input_file>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file=$1

# Use sed to print only the duplicated lines
sed -n '/^\(.*\)$/{x;s//\1/;G;/^\(.*\)\n\1$/s//\1/p}' $input_file
