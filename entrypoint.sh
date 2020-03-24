#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
arr=$(echo $line | tr " " "\n")

for x in $arr
do
    echo "\"$x\""
done

echo "::set-output name=lines::$line_arr[4]"
