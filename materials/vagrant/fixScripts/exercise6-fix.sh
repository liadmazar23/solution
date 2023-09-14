#!/bin/bash

if [ $# -lt 3 ]; then
 echo "Usage: $0 <file1> <file2> ... <remote_folder>"
  exit 1
fi

files_to_copy=("${@:1:$(($#-1))}")
remote_folder="${!#}"

echo "${files_to_copy[@]}"

scp "${files_to_copy[@]}" "$remote_folder" && du -bc "${files_to_copy[@]}" | awk '{last = $1} END {print last}'
