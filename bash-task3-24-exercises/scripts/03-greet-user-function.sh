#!/usr/bin/env bash
greet_user() {
  read -r -p "Введите имя: " name
  printf 'Привет, %s!\n' "$name"
}
greet_user
