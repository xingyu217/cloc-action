#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
arr=$(echo $line | tr " " "\n")

echo ${arr[-1]}

echo "::set-output name=lines::${arr[-1]}"
