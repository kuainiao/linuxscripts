#! /bin/sh
#Programe
#   重复输入，直到输入正确


while true; do
    read -p "请输入用户名：" username
    if [ "$username" = "hello" ]; then
        echo "输入正确..."
        break
    fi
done

exit 0
