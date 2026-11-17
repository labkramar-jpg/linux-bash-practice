# Linux & Bash Practice

Linux command-line exercises completed as part of cybersecurity training. The repository covers filesystem operations, permissions, text processing, system logs, process inspection, and basic networking.

## Technologies

- Linux / Ubuntu
- Bash
- GNU coreutils, `grep`, `find`, `ps`, `ss`, `lsof`, `curl`, `nc`
- Git & GitHub

## Exercises

- [Basic Homework](exercises/basic-homework.md) — directories, files, `nano`, `echo`, copying.
- [Linux Commands — 15 exercises](exercises/linux-commands.md) — system inspection, permissions, logs, processes, networking, and security investigation.

## Environment and notes

Commands primarily target Ubuntu/Linux. Some files (such as `/var/log/auth.log`) and tools (such as `ss`, `/proc`) differ or may be unavailable on macOS and browser-based terminals. Some examples require elevated privileges and/or prepared sample files. The suspicious-binary and process-investigation examples are **static/defensive exercises** intended for an isolated lab.

`/tmp` contents may be deleted automatically. Process IDs in the tasks are examples; inspect the process before terminating it.

## Upcoming

Bash scripting exercises with user input, functions, conditions, and loops.

## Author

[labkramar-jpg](https://github.com/labkramar-jpg)
