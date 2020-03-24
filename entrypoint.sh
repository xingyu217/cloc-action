#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
line_arr=($line)
echo $line_arr[0]
echo $line_arr[1]
echo $line_arr[4]
echo "::set-output name=lines::$line_arr[4]"
