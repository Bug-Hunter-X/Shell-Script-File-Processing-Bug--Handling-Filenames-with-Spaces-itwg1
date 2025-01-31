#!/bin/bash

# This script demonstrates a correct way to process files,
# handling filenames with spaces properly.

find /path/to/files/ -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # ... process the file ...
  if [[ $? -ne 0 ]]; then
    echo "Error processing $file"
  fi
done