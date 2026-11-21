#!/usr/bin/env bash

# Task 05: Define a function that accepts two numbers and prints their sum.

sum_two() {
  local a=$1 b=$2
  echo $((a + b))
}
sum_two 2 4
