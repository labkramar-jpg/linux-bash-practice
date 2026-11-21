#!/usr/bin/env bash

# Task 03: Define a function that reads a name and prints a greeting.

greet_user() {
  read -r -p "Enter your name: " name
  printf 'Hello, %s!\n' "$name"
}
greet_user
