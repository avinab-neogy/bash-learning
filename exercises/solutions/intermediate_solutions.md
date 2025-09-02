
## Intermediate Exercise Solutions

### 1. List all `.txt` files and show line counts

```
#!/bin/bash
# Loop through all .txt files in the current directory
for file in *.txt; do
  # Check if the file exists and is a regular file
  if [ -f "$file" ]; then
    # Count the number of lines in the file
    lines=$(wc -l < "$file")
    # Display the filename and its line count
    echo "$file: $lines lines"
  fi
done
```
---

### 2. Replace a word in a file and save to a new file

```
\#!/bin/bash

read -p "Enter file name: " file
read -p "Word to find: " find
read -p "Word to replace with: " replace
read -p "Output file name: " outfile

# Use sed to replace all occurrences and save to output file

sed "s/$find/$replace/g" "$file" > "$outfile"
echo "Replacement done. Output saved to \$outfile"
```

---

### 3. Monitor a directory for new files and log additions

```
#!/bin/bash

# Prompt user to enter the directory to monitor for new files
read -p "Enter directory to monitor: " dir

# Prompt user to enter the name of the log file where changes will be recorded
read -p "Enter log file name: " logfile

# Inform user of monitoring and logging targets
echo "Monitoring directory: $dir"
echo "Logging new files to $logfile"

# Create the log file if it doesn't already exist
touch "$logfile"

# Take an initial snapshot of all files in the directory
prev_files=$(ls "$dir")

# Start an infinite loop to repeatedly check for new files
while true; do
  # Wait for 5 seconds before checking again
  sleep 5

  # Take a fresh snapshot of files in the directory
  current_files=$(ls "$dir")

  # Compare previous and current snapshots to find new files
  # 'comm -13' outputs lines present in current_files but not in prev_files
  new_files=$(comm -13 <(echo "$prev_files") <(echo "$current_files"))

  # If there are new files (new_files is not empty)
  if [ ! -z "$new_files" ]; then
    # Loop over each new file found
    for f in $new_files; do
      # Append a timestamped log entry for the new file to the log file
      echo "$(date): New file detected - $f" >> "$logfile"
      # Inform the user on the terminal about the new file
      echo "New file: $f"
    done
  fi

  # Update previous snapshot to the current one for next comparison
  prev_files=$current_files
done
```

---

**Notes:**  
- The first script safely handles the case when no `.txt` files exist.  
- The second script uses `sed` for text replacement and redirects output to a new file.  
- The third script uses a simple polling mechanism to detect new files every 5 seconds and logs them.  
