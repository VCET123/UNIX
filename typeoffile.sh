#!/bin/bash

# Set the directory path
directory="/path/to/directory"

# Set the file extension pattern
file_extension=".txt"

# Use egrep to filter files by extension and display the list
egrep ".*${file_extension}$" "$directory"/*
