#!/bin/bash


txt_files=(*.txt)
c_files=(*.c)

if [[ -e "${txt_files[0]}" || -e "${c_files[0]}" ]]; then
    echo "Existing .txt and .c files in the directory:"
    ls *.txt *.c 2>/dev/null
else
    echo "No .txt or .c files found. Creating dummy files..."
    
    
    touch file1.txt file2.txt file1.c file2.c
    
    echo "Created the following files:"
    ls *.txt *.c
fi
