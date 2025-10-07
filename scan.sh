#!/bin/bash

# List of suspicious keywords
keywords=("password=" "api_key" "secret=" "eval(" "exec(")

# File extensions to scan
file_extensions=("*.sh" "*.env" "*.js" "*.txt" "*.conf")

found=0

for ext in "${file_extensions[@]}"; do
  for file in $(find . -type f -name "$ext"); do
    for keyword in "${keywords[@]}"; do
      if grep -q "$keyword" "$file"; then
        echo "⚠️ Found '$keyword' in $file"
        found=1
      fi
    done
  done
done

if [ $found -eq 1 ]; then
  echo "Vulnerabilities detected!"
  exit 1
else
  echo "No vulnerabilities found."
  exit 0
fi
