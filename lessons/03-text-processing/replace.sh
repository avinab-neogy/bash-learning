#!/bin/bash
# Ask for file name and the text to find and replace
read -p "File: " file
read -p "Text to replace: " find
read -p "Replacement text: " repl

# sed substitutes all occurrences and prints result
sed "s/$find/$repl/g" "$file"
