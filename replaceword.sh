#!/bin/bash

# Define the file path
file_path="your_file.txt"

# Define the word to replace
word_to_replace="old_word"

# Define the new word
new_word="new_word"

# Use sed to replace all occurrences of the word in the file
sed -i "s/${word_to_replace}/${new_word}/g" "$file_path"
