#!/bin/bash
# coder:  MilesYYh


file=$1
size=$2

# istring=$(cat "$file")
istring=$(tr -d '\n' < "$file")
> "$file"
IFS=' ' read -r -a SIxyz <<< "$istring"


for (( i=0; i<${#SIxyz[@]}; i+=size ))
do
    line="${SIxyz[@]:$i:$size}"
    echo "$line" >> "$file"
done

# cat "$file"
echo "Complete and then U?"

