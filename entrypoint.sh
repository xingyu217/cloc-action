#!/usr/bin/env sh
cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
echo $line
IFS=' ' read -r -a arr <<< "${line}"
#arr=$( echo $line | tr " " "\n" )
for i in "${arr[@]}"
do
    echo $i
done

