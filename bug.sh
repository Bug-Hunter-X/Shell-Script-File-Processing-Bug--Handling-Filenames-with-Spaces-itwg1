#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to how it handles filenames.

for file in /path/to/files/*; do
  echo "Processing: $file"
  # ... process the file ...
  if [[ $? -ne 0 ]]; then
    echo "Error processing $file"
  fi
  #This is not correct as the wildcard expansion may contain spaces
done