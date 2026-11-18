#!/usr/bin/env bash
name="Alice"
if [[ "$name" == "Alice" ]]; then
  printf 'Привет, %s!\n' "$name"
else
  echo "Вы кто?"
fi
