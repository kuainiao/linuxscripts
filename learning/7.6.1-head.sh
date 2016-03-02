#!/usr/bin/env bash
#head 打印前n行
#语法 head -N file

count=$(echo $1 | sed 's/^-//')
shift
sed ${count}q "$@"