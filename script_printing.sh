#!/bin/bash

# Check for .txt and .c files in the current directory
txt_files=(*.txt)
c_files=(*.c)

# If no .txt or .c files exist, create dummy files
if [[ ${#txt_files[@]} -eq 0 && ${#c_files[@]} -eq 0 ]]; then
    echo "No .txt or .c files found. Creating dummy files..."
    touch file1.txt file2.txt file1.c file2.c
    echo "Dummy files created: file1.txt, file2.txt, file1.c, file2.c"
else
    echo "List of .txt and .c files in the current directory:"
    ls *.txt *.c 2>/dev/null
fi
