#!/bin/bash
# Show who is currently logged in
echo "User: $(whoami)"

# Show how long the system has been running
echo "Uptime: $(uptime -p)"

# Show the kernel version
echo "Kernel: $(uname -r)"
