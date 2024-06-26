#!/bin/bash
# coder:MilesYYh
## func:batch to convert the xyz files into the standard gaussian format of gjf

for file in *.xyz; 
do  
xyz_content=$(cat "$file")
# filename="${file%.*}"
filename="${file%.xyz}"

g_string=$(cat <<EOF
%mem=60GB
%nprocshared=64
%chk=$filename.chk

#p b3lyp/6-31*g++  

TITILE 

0 1
$xyz_content
EOF
)

# echo $g_string
echo "$g_string" > $filename.gjf
done

