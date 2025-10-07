# Simple Bash Vulnerability Scanner

This repository contains a simple bash script to scan for common security risks in code files, such as hardcoded passwords, API keys, or unsafe commands like `eval` and `exec`.

## How it works

- The `scan.sh` script scans files with extensions `.sh`, `.env`, `.js`, `.txt`, and `.conf` for suspicious keywords.
- If any suspicious keywords are found, it prints a warning and causes the script to exit with an error.
- A GitHub Action automatically runs this script on every push or pull request.
- If vulnerabilities are detected, the action fails, making it easy to catch issues early.

## How to use

- Add your code files to the repo.
- On each push or pull request, the GitHub Action will run the scan automatically.
- Review the action logs for any security warnings.

## Keywords scanned

- `password=`
- `api_key`
- `secret=`
- `eval(`
- `exec(`

Feel free to extend the keywords and file types!

---

This is a simple demo project to showcase basic security automation using GitHub Actions and Bash scripting.
