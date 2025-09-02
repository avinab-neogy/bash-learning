#!/bin/bash
echo "Checking Bash version..."
bash --version | head -1
for cmd in grep sed awk find sort uniq wc cut tr; do
  printf "%-6s: " \$cmd
  command -v \$cmd >/dev/null && echo "found" || echo "missing"
done
