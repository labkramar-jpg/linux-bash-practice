#!/usr/bin/env bash
directory="${1:-./scripts}"
if [[ ! -d "$directory" ]]; then
  echo "Ошибка: директория не существует: $directory" >&2
  exit 1
fi
if [[ ! -r "$directory" || ! -x "$directory" ]]; then
  echo "Ошибка: нет доступа к директории: $directory" >&2
  exit 1
fi
# Только .sh-файлы непосредственно в директории.
count=0
while IFS= read -r -d '' file; do
  ((count += 1))
done < <(find "$directory" -maxdepth 1 -type f -name '*.sh' -print0)
echo "Количество .sh файлов: $count"
