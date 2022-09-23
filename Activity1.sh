#! /bin/bash

echo "User: $USER"
echo "Current date: $(date +"%y-%m-%d")"
echo "Time: $(date +"%r")"
echo "Current Directory: $(pwd)"
echo "number of files: $(ls | wc -l)"
echo "Largest file: $(ls -Slr | tail -1 | awk '{print $(NF)}')"

exit 0

