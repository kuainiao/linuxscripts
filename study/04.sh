#!/usr/bin/env bash
#Program:
#   User inputs 2 integer numbers; program will cross these two numbers
#History:
#   2016/02/24 slowrookie
echo -e "You Should input 2 numbers, I will cross them !\n"
read -p "firs number:" firstnu
read -p "second number:" secondnu
#declare -i total=$firstnu * $secondnu
#推荐做法var=$((a*b))
total=$(($firstnu*$secondnu))
echo -e "\nThe result info:$firstnu x $secondnu is ==> $total"