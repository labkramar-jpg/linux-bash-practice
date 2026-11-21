
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

[View Bash Scripts](bash-task3-24-exercises/scripts/)

| Task | Description |
| --- | --- |
| [01](bash-task3-24-exercises/scripts/01-greet-user.sh) | Read a name from standard input and print a greeting. |
| [02](bash-task3-24-exercises/scripts/02-simple-function.sh) | Define and call a function that prints "Hello - my name is Function". |
| [03](bash-task3-24-exercises/scripts/03-greet-user-function.sh) | Define a function that reads a name and prints a greeting. |
| [04](bash-task3-24-exercises/scripts/04-greet-parameter.sh) | Define and call a function that accepts a name and prints a greeting. |
| [05](bash-task3-24-exercises/scripts/05-sum-two-numbers.sh) | Define a function that accepts two numbers and prints their sum. |
| [06](bash-task3-24-exercises/scripts/06-average-three-numbers.sh) | Define a function that accepts three numbers and prints their arithmetic mean. |
| [07](bash-task3-24-exercises/scripts/07-check-alice.sh) | If the name is Alice, greet her; otherwise, print "Who are you?". |
| [08](bash-task3-24-exercises/scripts/08-for-1-to-5.sh) | Print numbers from 1 to 5 using a for loop. |
| [09](bash-task3-24-exercises/scripts/09-for-4-to-12.sh) | Print numbers from 4 to 12 using a for loop. |
| [10](bash-task3-24-exercises/scripts/10-hello-five-times.sh) | Print Hello five times using a for loop. |
| [11](bash-task3-24-exercises/scripts/11-current-time-function.sh) | Define and call a function that prints the current time. |
| [12](bash-task3-24-exercises/scripts/12-break-at-five.sh) | Loop from 1 to 10 and stop when the number is 5. |
| [13](bash-task3-24-exercises/scripts/13-continue-at-five.sh) | Loop from 1 to 10, skipping the number 5. |
| [14](bash-task3-24-exercises/scripts/14-while-sum-1-to-5.sh) | Calculate the sum of numbers from 1 to 5 using a while loop. |
| [15](bash-task3-24-exercises/scripts/15-compare-strings.sh) | Compare the strings hello and world and report whether they are equal. |
| [16](bash-task3-24-exercises/scripts/16-compare-numbers.sh) | Compare a=2 and b=4 and report whether the numbers are equal. |
| [17](bash-task3-24-exercises/scripts/17-odd-numbers-1-to-20.sh) | Print all odd numbers from 1 to 20 using a for loop. |
| [18](bash-task3-24-exercises/scripts/18-even-numbers-1-to-20.sh) | Print all even numbers from 1 to 20 using a for loop. |
| [19](bash-task3-24-exercises/scripts/19-sum-odd-1-to-20.sh) | Calculate the sum of all odd numbers from 1 to 20 using a for loop. |
| [20](bash-task3-24-exercises/scripts/20-max-of-three.sh) | Find the maximum of three numbers: 2, 4, and 12. |
| [21](bash-task3-24-exercises/scripts/21-sum-1-to-10.sh) | Calculate the sum of numbers from 1 to 10 using a loop. |
| [22](bash-task3-24-exercises/scripts/22-sum-range-function.sh) | Define a function accepting start and end values and calculating the inclusive sum. |
| [23](bash-task3-24-exercises/scripts/23-count-directory-files.sh) | Count regular files in a directory after checking its existence and accessibility. |
| [24](bash-task3-24-exercises/scripts/24-count-sh-files.sh) | Count regular .sh files in a directory after checking its existence and accessibility. |

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
└── bash-task3-24-exercises/
    └── scripts/
        ├── 01-greet-user.sh
        ├── 02-simple-function.sh
        ├── ...
        └── 24-count-sh-files.sh
```

## Running Bash Scripts

Run a script using Bash:

```bash
bash bash-task3-24-exercises/scripts/01-greet-user.sh
```

Or run another exercise:

```bash
bash bash-task3-24-exercises/scripts/22-sum-range-function.sh
```

## Author

GitHub: [labkramar-jpg](https://github.com/labkramar-jpg)
