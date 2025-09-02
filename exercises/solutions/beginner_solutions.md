## beginner exercise solutions

### 1. Greet user by name

```
\#!/bin/bash

read -p "Enter your name: " name
echo "Hello, \$name"
```

### 2. Check if a file exists and show its size or an error

```
\#!/bin/bash

read -p "Enter file name: " filename

if [ -f "\$filename" ]; then
echo "File exists."
echo "Size: $(stat -c%s "$filename") bytes"
else
echo "File does not exist."
fi
```

### 3. Read two numbers and print their sum

```
\#!/bin/bash

read -p "Enter number 1: " n
read -p "Enter number 2: " m

sum=\$((n + m))
echo "Sum is \$sum"
```

**Notes:**

- For arithmetic, use `$(( ... ))` for calculations in Bash.
- For checking file existence, `[ -f "$filename" ]` is standard.
- Always add spaces after a prompt for better user experience.


