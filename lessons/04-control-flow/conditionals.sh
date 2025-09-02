#!/bin/bash
# Ask for two numbers
read -p "First number: " a
read -p "Second number: " b

# Compare them using -gt (greater than) and have spaces after opening and before closing the brackets []
if [ "$a" -gt "$b" ]; then
  echo "$a is greater than $b"
else
  echo "$a is not greater than $b"
fi
