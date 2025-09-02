# Bash Cheatsheet

## Basic Syntax and Concepts

- **Shebang**  
```
\#!/bin/bash
```  
This line tells the system to run the script using the Bash shell.

- **Variables**  
Assign a value (no spaces around `=`):  
```
name="value"
```  
Use variables by prefixing with `$`:  
```
echo \$name
```

- **Comments**  
Lines starting with `#` are comments and ignored by Bash:  
```
# This is a comment
```

- **Conditional Statements**  
Basic structure:  
```
if [ condition ]; then
\# commands if condition is true
else
\# commands if condition is false
fi
```  
Common tests include: file existence (`-f filename`), string comparison (`=`, `!=`), numeric comparison (`-eq`, `-gt`).

- **Loops**  
For loop over a list or range:  
```
for item in list; do
\# commands
done
```  
While loop (repeat while condition is true):  
```
while [ condition ]; do
\# commands
done
```

- **Functions**  
Define and reuse commands:  
```
function_name() {
\# commands
}

# Call function

function_name
```

- **Command Substitution**  
Run a command and use its output:  
```
today=\$(date +%Y-%m-%d)
echo "Today is \$today"
```

---

## Commonly Used Commands

### Navigation and File System

- `pwd` — Print working directory (shows current directory).  
- `cd <directory>` — Change to specified directory.  
- `ls` — List files and directories. Common options:  
- `ls -l` (detailed listing)  
- `ls -a` (include hidden files)

### File Operations

- `cp <source> <destination>` — Copy files or directories.  
- `mv <source> <destination>` — Move or rename files or directories.  
- `rm <file>` — Remove (delete) files.  
- `rm -r <directory>` — Remove directories and their contents recursively.  
- `mkdir <directory>` — Create new directories.  
- `touch <file>` — Create an empty file or update timestamp.  
- `find <path> -name <pattern>` — Search for files by name or pattern.

### Text Processing

- `cat <file>` — Display contents of a file.  
- `head -n <number> <file>` — Show first N lines.  
- `tail -n <number> <file>` — Show last N lines.  
- `grep <pattern> <file>` — Search for lines matching pattern. Options:  
- `-i` case insensitive  
- `-r` recursive directory search  
- `sed 's/old/new/g' <file>` — Replace text using stream editor.  
- `awk '{print $1}' <file>` — Extract and process columns or fields.  
- `wc <file>` — Count lines, words, characters.  
- `sort <file>` — Sort lines in a file.  
- `uniq <file>` — Remove adjacent duplicate lines. Usually combined with `sort`.  
- `cut -d',' -f1 <file>` — Extract column by delimiter.

### Process and System

- `ps` — Show running processes.  
- `top` — Interactive process viewer.  
- `kill <PID>` — Terminate a process by its ID.  
- `jobs` — List background jobs.  
- `bg`, `fg` — Resume jobs in background or foreground.

### Input/Output Redirection and Pipes

- `command > file` — Redirect command output to a file (overwrite).  
- `command >> file` — Redirect and append output to a file.  
- `command < file` — Use file contents as input to a command.  
- `command1 | command2` — Pipe output of command1 to command2 as input.

### Special Variables

- `$0` — Script name  
- `$1, $2, ...` — Command line arguments  
- `$#` — Number of arguments  
- `$@` — All arguments as separate words  
- `$$` — Current process ID  
- `$?` — Exit status of last command  

---

## Best Practices

- Always quote variables `"${var}"` to avoid word-splitting and globbing issues.  
- Use `set -euo pipefail` at the start of scripts to catch errors early.  
- Comment your scripts to explain non-obvious parts for readability.  
- Test scripts on a safe environment before running on production systems.  
- Use meaningful variable and function names.  
- Modularize code with functions for clarity and reuse.

---

