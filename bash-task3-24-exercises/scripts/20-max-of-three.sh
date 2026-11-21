#!/usr/bin/env bash

# Task 20: Find the maximum of three numbers: 2, 4, and 12.

a=2
b=4
c=12
max=$a
if ((b > max)); then max=$b; fi
if ((c > max)); then max=$c; fi
echo "$max"
