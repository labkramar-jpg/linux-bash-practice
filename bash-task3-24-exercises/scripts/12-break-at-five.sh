#!/usr/bin/env bash

# Task 12: Loop from 1 to 10 and stop when the number is 5.

for ((i=1; i<=10; i++)); do
  if ((i == 5)); then
    break
  fi
  echo "$i"
done
