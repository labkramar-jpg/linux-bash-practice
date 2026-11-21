#!/usr/bin/env bash

# Task 22: Define a function accepting start and end values and calculating the inclusive sum.

sum_range() {
  if (($# != 2)) || ! [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]]; then
    echo "Usage: sum_range START END (integers)" >&2
    return 1
  fi
  local start=$1 end=$2 i sum=0
  if ((start > end)); then
    echo "START must be <= END" >&2
    return 1
  fi
  for ((i=start; i<=end; i++)); do
    ((sum += i))
  done
  echo "$sum"
}
sum_range 1 10
# Another example: sum_range 1 5
