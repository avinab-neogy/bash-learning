#!/bin/bash
# A for loop over a fixed list
echo "For loop: 1 2 3"
for i in 1 2 3; do
  echo "  Number: $i"
done

# A while loop that counts down
echo "While loop countdown"
count=3
while [ $count -gt 0 ]; do
  echo "  $count"
  count=$((count - 1))
done
