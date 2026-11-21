#!/usr/bin/env bash

# Task 14: Calculate the sum of numbers from 1 to 5 using a while loop.

i=1
sum=0
while ((i <= 5)); do
  ((sum += i))
  ((i += 1))
done
echo "$sum"
