#!/bin/bash
# Ask for a file name
read -p "File to analyze: " file

# wc prints lines, words, and characters in the file
wc "$file"
