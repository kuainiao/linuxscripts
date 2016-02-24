#!/usr/bin/env bash
#Program
#   This program shows the user's choice
#History:
#   2016/02/24 slowrookie
read -p "Please input (Y/N):" yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK, continue" && exit 0
echo "I don't know what your choice is " && exit 0