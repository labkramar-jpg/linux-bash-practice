#!/usr/bin/env bash
average_three() {
  local a=$1 b=$2 c=$3
  awk -v a="$a" -v b="$b" -v c="$c" 'BEGIN { printf "%.2f\n", (a+b+c)/3 }'
}
average_three 2 4 12
