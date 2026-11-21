#!/usr/bin/env bash

# Task 15: Compare the strings hello and world and report whether they are equal.

first="hello"
second="world"
if [[ "$first" == "$second" ]]; then
  echo "STRINGS ARE EQUAL"
else
  echo "STRINGS ARE NOT EQUAL"
fi
