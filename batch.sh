#!/bin/bash

for file in *.xyz; 
do
    ./SI2xyz_v1.sh "$file" "4"
done
echo "complete bath mission"