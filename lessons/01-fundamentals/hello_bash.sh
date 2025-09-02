#!/bin/bash
# Use Bash to run this script (the “shebang”). It tells the system which program to use.

# Print the message: Hello, world!
echo "Hello, world!"

# Print today’s date:
# The part $(date +%Y-%m-%d) means: run the command `date +%Y-%m-%d`
# This command gets the current date in year-month-day format.
# Whatever is inside $() is run at runtime and is output as a part of the text because of echo( writes to standard output)
echo "Today is: $(date +%Y-%m-%d)"
