#!/usr/bin/env bash
#Program:
#   Program check $1 is equal to "hello"
#History:
#   2016/02/24 slowrookie
if [ "$1" == 'hello' ]; then
    echo "Hello, how are you ?"
elif ["$1" == ""]; then
    echo "you must input parameters, ex {$0 someword}"
else
    echo "Then ony parameter is 'hello', ex {$0 hello}"
fi