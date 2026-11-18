#!/usr/bin/env bash
sum=0
for ((i=1; i<=20; i++)); do
  if ((i % 2 != 0)); then
    ((sum += i))
  fi
done
echo "$sum"
