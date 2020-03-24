#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
echo $line
echo "::set-output name=lines::$line"
