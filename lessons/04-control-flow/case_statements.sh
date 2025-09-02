#!/bin/bash
# Ask the user to choose an option
echo "Choose: start, stop, or status"
read choice

# Match the choice against patterns
case $choice in
  start)  echo "Starting service";;
  stop)   echo "Stopping service";;
  status) echo "Service is running";;
  *)      echo "Unknown option";;
esac
