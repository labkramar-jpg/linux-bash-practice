#!/usr/bin/env bash

# Task 13: Loop from 1 to 10, skipping the number 5.

for ((i=1; i<=10; i++)); do
  if ((i == 5)); then
    continue
  fi
  echo "$i"
done
