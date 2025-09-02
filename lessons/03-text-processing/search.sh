#!/bin/bash
# Ask user for the pattern and filename
read -p "Pattern to find: " pat
read -p "File to search: " file

# Show matching lines with line numbers
echo "Matching lines:"
grep -n "$pat" "$file"

# Count lines that contain the pattern (each line counted once, even if pattern occurs multiple times)
line_count=$(grep -c "$pat" "$file")
echo "Pattern \"$pat\" found in $line_count lines in $file."

# Count total occurrences of the pattern across entire file (counts all matches, even multiple per line)
total_count=$(grep -o "$pat" "$file" | wc -l)
echo "Total occurrences of pattern \"$pat\": $total_count"

