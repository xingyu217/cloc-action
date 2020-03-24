#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n2 | head -1  cloc.txt )
echo $line
echo "::set-output name=lines::$line"
