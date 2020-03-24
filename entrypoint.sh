#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
cat cloc.txt
line=$( tail -n 2 cloc.txt )
echo "::set-output name=lines::$line"
