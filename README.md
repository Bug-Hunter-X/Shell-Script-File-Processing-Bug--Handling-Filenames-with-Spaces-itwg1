# Shell Script File Processing Bug
This repository demonstrates a common yet subtle bug in shell scripts when processing files, particularly those containing spaces in their names. The script attempts to iterate through files in a directory but fails to properly handle filenames with spaces.

## Bug Description
The bug lies in how the script iterates over the files using a wildcard. When encountering a filename with spaces, the wildcard expansion might split it into multiple arguments instead of treating it as a single file path. This leads to errors or unexpected behavior during file processing.

## Solution
The solution utilizes an improved iteration approach that correctly handles filenames with spaces by using the find command with appropriate quoting and parameter expansion to ensure files are processed accurately.

## How to reproduce:
1. Create a directory with files that contain spaces in their names (e.g., "my file.txt")
2. Replace "/path/to/files/*" in bug.sh with the path to your directory
3. Run the bug.sh script to see the error
4. Run the bugSolution.sh script to see the correct behavior