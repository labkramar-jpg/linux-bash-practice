#!/usr/bin/env bash
first="hello"
second="world"
if [[ "$first" == "$second" ]]; then
  echo "СТРОКИ РАВНЫ"
else
  echo "СТРОКИ НЕ РАВНЫ"
fi
