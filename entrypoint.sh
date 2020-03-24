#!/usr/bin/env sh

cloc $(git rev-parse HEAD) | tee -a cloc.txt
line=$( tail -n 2 cloc.txt | head -1 )
echo $line
arr=$(cut -d' ' -f5 <<<"$line")
#IFS=" " read -r -a arr <<< "$line"
#arr=$( echo $line | tr " " "\n" )
echo $arr

