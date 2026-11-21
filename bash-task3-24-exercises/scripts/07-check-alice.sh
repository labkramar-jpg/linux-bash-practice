#!/usr/bin/env bash

# Task 07: If the name is Alice, greet her; otherwise, print "Who are you?".

name="Alice"
if [[ "$name" == "Alice" ]]; then
  printf 'Hello, %s!\n' "$name"
else
  echo "Who are you?"
fi
