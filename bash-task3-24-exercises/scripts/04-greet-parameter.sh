#!/usr/bin/env bash

# Task 04: Define and call a function that accepts a name and prints a greeting.

greet() {
  printf 'Hello, %s!\n' "$1"
}
greet "John"
