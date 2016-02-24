#!/usr/bin/env bash
#Program
#   User input a file name, program will check the flowing
#   1.)exist
#   2.)file/directory
#   3.)file permissions
#History
#   2016/02/24 slowrookie
echo -e "Please input filename, I will check the file name's type and Permission.\n\n"
read -p "Input file name: " filename
test -z $filename && echo "You must input filename" && exit 0
#2.判断档案是否存在？若不存在则显示讯息并结束脚本
test ! -e $filename && echo "The file name '$filename' don't exist" && exit 0

test -f $filename && filetype="regularefile"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="perm executable"

echo "The filename: $filename is a $filetype"
echo "And the permissions are: $perm"
