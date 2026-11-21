#!/usr/bin/env bash

# Task 21: Calculate the sum of numbers from 1 to 10 using a loop.

sum=0
for ((i=1; i<=10; i++)); do
  ((sum += i))
done
echo "$sum"
