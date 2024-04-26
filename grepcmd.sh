#!/bin/bash

# Check if file name is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found!"
    exit 1
fi

# Count characters
char_count=$(wc -m < "$1")

# Count words
word_count=$(wc -w < "$1")

# Count lines
line_count=$(wc -l < "$1")

echo "Character count: $char_count"
echo "Word count: $word_count"
echo "Line count: $line_count"
