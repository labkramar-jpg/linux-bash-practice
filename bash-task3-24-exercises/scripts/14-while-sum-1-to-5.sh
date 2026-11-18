#!/usr/bin/env bash
i=1
sum=0
while ((i <= 5)); do
  ((sum += i))
  ((i += 1))
done
echo "$sum"
