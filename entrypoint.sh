#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
cat cloc.txt
line=$( tail -2 cloc.txt | head -1 )
echo "::set-output name=lines::$line"
