#!/usr/bin/env bash
#Program:
#   Program shows the script name, parameters...
#History:
#   2016/02/24 slowrookie
echo "The script name is ==> $0"
echo "Total parameter number is ==>$#"

for i in $*
do
    echo -e "$i"
done