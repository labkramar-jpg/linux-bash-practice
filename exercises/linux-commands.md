# Task 2 — Linux Commands

> Commands primarily target Linux (Ubuntu). Some examples assume existing files or processes in a lab environment. Only delete files or terminate processes after verifying the target.

## 1. Current directory, hidden files, and disk usage

**Task:** In the terminal, display the full path of your current directory, list all files including hidden files with their permissions, and show the disk usage of the current directory.

```bash
pwd
ls -la
du -sh .
```

## 2. Nested directories and an empty file

**Task:** Create the directory structure `labs/task2/a/b/c` under `/tmp`. Create an empty file named `test.txt` inside `c`. Then return to the previous directory using one command.

```bash
mkdir -p /tmp/labs/task2/a/b/c
touch /tmp/labs/task2/a/b/c/test.txt
cd /tmp/labs/task2/a/b/c
cd ..
```

`cd ..` moves up one directory level (from `c` to `b`); `cd -` returns to the directory you were in before the previous `cd`.

## 3. Copying a directory and deleting the original

**Task:** Copy the entire `/tmp/labs/task2` directory to `/tmp/labs/task2_backup`. Delete the original `/tmp/labs/task2`.

```bash
cp -r /tmp/labs/task2 /tmp/labs/task2_backup
ls -la /tmp/labs/task2_backup/a/b/c
rm -r /tmp/labs/task2
```

## 4. Viewing the beginning and end of a log file

**Task:** Display the last 50 lines of `/var/log/auth.log` and follow new entries in real time. Separately, display the first 20 lines.

```bash
tail -n 50 -f /var/log/auth.log
# Stop following the log: Ctrl+C
head -n 20 /var/log/auth.log
```

## 5. Finding .log files

**Task:** Find all files with the `.log` extension across the system while hiding `Permission denied` errors.

```bash
find / -type f -iname "*.log" 2>/dev/null
```

## 6. Searching logs for Failed password

**Task:** Find lines containing `Failed password` in all files under `/var/log/`, ignoring case. Display line numbers and filenames.

```bash
grep -rinH "Failed password" /var/log/
```

## 7. Finding lines containing IP addresses

**Task:** Find and display only the lines in `/etc/passwd` that contain an IP address.

```bash
grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}' /etc/passwd
```

`/etc/passwd` does not normally contain IP addresses. This educational pattern does not validate each IPv4 octet (0–255).

## 8. Top 10 IP addresses by failed login attempts

**Task:** Extract IP addresses from `Failed password` entries in `/var/log/auth.log`, count attempts per IP address, and display the 10 most frequent addresses.

```bash
grep -i "Failed password" /var/log/auth.log | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' | sort | uniq -c | sort -nr | head -n 10
```

## 9. Permissions for script.sh

**Task:** Make `script.sh` executable only by its owner. Then change its permissions to `644`. Display the permissions before and after the changes.

```bash
ls -l script.sh
chmod u+x,go-x script.sh
ls -l script.sh
chmod 644 script.sh
ls -l script.sh
```

`chmod 644` sets permissions to `rw-r--r--`; the file is no longer executable.

## 10. Current user and system logins

**Task:** Display your user ID, groups, username, other logged-in users, and the last 10 system logins.

```bash
id -u
groups
whoami
who
last -n 10
```

## 11. Apache/nginx processes, PID, and port 4444

**Task:** Find all processes named `apache` or `nginx`. Terminate the process with PID `1234`. Find the process listening on port `4444`.

```bash
ps aux | grep -E '[a]pache|[n]ginx'
ps -p 1234 -o pid,user,command
# Only in a lab environment and after verifying the PID:
kill 1234
lsof -nP -iTCP:4444 -sTCP:LISTEN
```

## 12. Networking: IP addresses, ports, ping, and HTTP headers

**Task:** Display all IP addresses of the machine and all listening ports with their processes. Ping `8.8.8.8` three times and retrieve the HTTP headers of `https://example.com`.

```bash
ip addr show
sudo ss -tulnp
ping -c 3 8.8.8.8
curl -I https://example.com
```

## 13. Counting lines containing error

**Task:** The `/tmp/logs/` directory contains 100 files. Use a single command to find lines containing `error` across all files, count the total number of matching lines, and save the result to `/tmp/error_count.txt`.

```bash
grep -rih "error" /tmp/logs/ | wc -l > /tmp/error_count.txt
```

Verification:

```bash
cat /tmp/error_count.txt
```

## 14. Static analysis of a suspicious binary

**Task:** Given a suspicious binary `/tmp/malware.bin`, extract readable strings and search them for URLs, IP addresses, and the words `password` and `key`.

```bash
strings /tmp/malware.bin
strings /tmp/malware.bin | grep -oE 'https?://[^[:space:]]+'
strings /tmp/malware.bin | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}'
strings /tmp/malware.bin | grep -iE 'password|key'
```

Do not execute an unknown binary. These commands are intended for static inspection in an isolated lab environment. The IP and URL patterns are simplified.

## 15. Investigating a suspicious miner

**Task:** Someone has started a miner on a server. Identify the process with the highest CPU usage, determine its owner and executable path, identify its network ports, and start a listener on port 4444 to check for a callback.

```bash
# Processes with the highest CPU usage
ps aux --sort=-%cpu | head -n 10

# Replace 1234 with the identified PID
ps -p 1234 -o pid,ppid,user,%cpu,command
sudo readlink -f /proc/1234/exe

# All network connections of the process
sudo lsof -nP -a -p 1234 -i

# Listening TCP ports of the process only
sudo lsof -nP -a -p 1234 -iTCP -sTCP:LISTEN

# Listener: only in an isolated, authorized lab environment
nc -lvn 4444
```

**Note:** The syntax of `nc` depends on the implementation. A listener does not cause a process to connect to that port; the absence of an incoming connection does not prove that the miner has no outbound activity.
