
# Linux & Bash Practice

A collection of Linux command-line and Bash scripting exercises completed as part of cybersecurity training.

The repository covers filesystem operations, file permissions, text processing, system logs, process management, networking, security investigation, and Bash scripting fundamentals.

## Technologies

- Linux / Ubuntu
- Bash
- GNU coreutils
- grep, find, ps, ss, lsof, curl, nc
- Git & GitHub

## Exercises

### 1. Basic Homework

Practice with basic Linux commands:

- Creating and deleting directories
- Creating and editing files
- Writing and appending text
- Copying files and directories

[View Basic Homework](exercises/basic-homework.md)

### 2. Linux Commands — 15 Exercises

Practical exercises covering:

- Filesystem navigation and disk usage
- File searching and text processing
- System logs and authentication analysis
- File permissions and ownership
- User and process inspection
- Network diagnostics and open ports
- Basic security investigation

[View Linux Commands](exercises/linux-commands.md)

### 3. Bash Scripting — 24 Exercises

Bash scripting exercises covering:

- User input and output
- Variables and string comparisons
- Functions and parameters
- Conditional statements (if/else)
- For and while loops
- Break and continue statements
- Arithmetic operations
- Finding maximum values
- Working with directories and files
- Counting files by extension
- Input validation and error handling

[View Bash Scripts](scripts/)

## Environment and Notes

Commands primarily target Ubuntu/Linux.

Some tools and files, such as `/var/log/auth.log`, `ss`, and `/proc`, may be unavailable or behave differently on macOS.

Some exercises require elevated privileges or prepared sample files.

Security investigation examples are intended for educational purposes in an isolated lab environment.

Process IDs used in examples are placeholders and should be verified before executing commands that affect running processes.

## Repository Structure

```text
linux-bash-practice/
├── README.md
├── exercises/
│   ├── basic-homework.md
│   └── linux-commands.md
└── scripts/
    ├── 01-greet-user.sh
    ├── 02-simple-function.sh
    ├── ...
    └── 24-count-sh-files.sh
```

## Running Bash Scripts

Run a script using Bash:

```bash
bash scripts/01-greet-user.sh
```

Or run another exercise:

```bash
bash scripts/22-sum-range-function.sh
```

## Author

GitHub: [labkramar-jpg](https://github.com/labkramar-jpg)