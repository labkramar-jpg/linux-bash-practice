#!/usr/bin/env bash
sum=0
for ((i=1; i<=10; i++)); do
  ((sum += i))
done
echo "$sum"
