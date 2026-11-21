#!/usr/bin/env bash

# Task 19: Calculate the sum of all odd numbers from 1 to 20 using a for loop.

sum=0
for ((i=1; i<=20; i++)); do
  if ((i % 2 != 0)); then
    ((sum += i))
  fi
done
echo "$sum"
