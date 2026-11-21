#!/usr/bin/env bash

# Task 24: Count regular .sh files in a directory after checking its existence and accessibility.

directory="${1:-./bash-task3-24-exercises/scripts}"
if [[ ! -d "$directory" ]]; then
  echo "Error: directory does not exist: $directory" >&2
  exit 1
fi
if [[ ! -r "$directory" || ! -x "$directory" ]]; then
  echo "Error: cannot access directory: $directory" >&2
  exit 1
fi
# Only .sh files directly inside the directory.
count=0
while IFS= read -r -d '' file; do
  ((count += 1))
done < <(find "$directory" -maxdepth 1 -type f -name '*.sh' -print0)
echo "Number of .sh files: $count"
