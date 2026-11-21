#!/usr/bin/env bash

# Task 23: Count regular files in a directory after checking its existence and accessibility.

directory="${1:-./exercises}"
if [[ ! -d "$directory" ]]; then
  echo "Error: directory does not exist: $directory" >&2
  exit 1
fi
if [[ ! -r "$directory" || ! -x "$directory" ]]; then
  echo "Error: cannot access directory: $directory" >&2
  exit 1
fi
# Only files directly inside the directory, including hidden files.
count=0
while IFS= read -r -d '' file; do
  ((count += 1))
done < <(find "$directory" -maxdepth 1 -type f -print0)
echo "Number of files: $count"
