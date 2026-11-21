#!/usr/bin/env bash

# Task 01: Read a name from standard input and print a greeting.

read -r -p "Enter your name: " name
printf 'Hello, %s!\n' "$name"
