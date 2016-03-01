#!/usr/bin/env bash

#函数定义
factorial() {
    total=1
    for((i=1; i<=$1; i++)); do
        total=$(($total * $i))
    done
    #由于最后的返回行能用return，return只能表示退出状态，使用echo返回值
    echo "$total"
}

#函数调用
result=$(factorial "$1")

echo "$result"