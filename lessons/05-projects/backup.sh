#!/bin/bash
# Ask for a log file
read -p "Log file path: " log

# Extract field 1 (IP), sort, count unique, sort by count, show top 3
awk '{print $1}' "$log" | sort | uniq -c | sort -nr | head -3
