# Базовое задание

## 1. Создание и удаление папок

**Условие:** Создать папку `folder1`. Создать внутри этой папки папку `folder2`. В папке `folder2` создать файлы `1.txt` и `2.txt`. Удалить папку `folder2`.

```bash
mkdir folder1
mkdir folder1/folder2
touch folder1/folder2/1.txt
touch folder1/folder2/2.txt
rm -r folder1/folder2
```

## 2. Создание файла

**Условие:** Создать файл `hello1.txt` в главной рабочей папке (рядом с `folder1`).

```bash
touch hello1.txt
```

## 3. Запись текста

**Условие:** Добавить текст `Hello I am from USA.`

```bash
echo "Hello I am from USA." > hello1.txt
```

## 4. Редактирование через nano

**Условие:** Через `nano` добавить в этот же файл текст `I love USA`, не удаляя первую строку.

```bash
nano hello1.txt
```

Добавить вторую строку `I love USA`; сохранить через `Ctrl+O`, `Enter`; выйти через `Ctrl+X`.

## 5. Добавление через echo

**Условие:** Через `echo` добавить фразу `I love ESTONIA`, не затирая предыдущий текст.

```bash
echo "I love ESTONIA" >> hello1.txt
```

## 6. Копирование файла

**Условие:** Скопировать `hello1.txt` в папку `folder1`.

```bash
cp hello1.txt folder1/hello1.txt
```

**Проверка:**

```bash
cat hello1.txt
cat folder1/hello1.txt
```

Ожидаемое содержимое обоих файлов:

```text
Hello I am from USA.
I love USA
I love ESTONIA
```
