# Basic Homework

## 1. Creating and deleting directories

**Task:** Create a directory named `folder1`. Create `folder2` inside it. Create files `1.txt` and `2.txt` inside `folder2`. Delete `folder2`.

```bash
mkdir folder1
mkdir folder1/folder2
touch folder1/folder2/1.txt
touch folder1/folder2/2.txt
rm -r folder1/folder2
```

## 2. Creating a file

**Task:** Create `hello1.txt` in the main working directory (next to `folder1`).

```bash
touch hello1.txt
```

## 3. Writing text

**Task:** Add the text `Hello I am from USA.`

```bash
echo "Hello I am from USA." > hello1.txt
```

## 4. Editing with nano

**Task:** Use `nano` to add `I love USA` to the same file without deleting the first line.

```bash
nano hello1.txt
```

Add the second line `I love USA`; save with `Ctrl+O`, `Enter`; exit with `Ctrl+X`.

## 5. Appending with echo

**Task:** Use `echo` to append `I love ESTONIA` without overwriting the existing text.

```bash
echo "I love ESTONIA" >> hello1.txt
```

## 6. Copying a file

**Task:** Copy `hello1.txt` into `folder1`.

```bash
cp hello1.txt folder1/hello1.txt
```

**Verification:**

```bash
cat hello1.txt
cat folder1/hello1.txt
```

Expected contents of both files:

```text
Hello I am from USA.
I love USA
I love ESTONIA
```
