#!/usr/bin/env bash

# Task 17: Print all odd numbers from 1 to 20 using a for loop.

for ((i=1; i<=20; i++)); do
  if ((i % 2 != 0)); then
    echo "$i"
  fi
done
