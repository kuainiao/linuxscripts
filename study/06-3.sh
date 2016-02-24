#!/usr/bin/env bash
#Program
#   This program shows the user's choice
#History:
#   2016/02/24 slowrookie
read -p "Please input (Y/N):" yn
#[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK, continue" && exit 0
if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
    echo "OK, continue!"
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
    echo "Oh, interrupt!"
else
    echo "I don't know what your choice is "
fi
exit 0