#!/usr/bin/env bash
sum_two() {
  local a=$1 b=$2
  echo $((a + b))
}
sum_two 2 4
