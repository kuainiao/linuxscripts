#!/usr/bin/env bash
#Program: User inputs his first name and last name.Program shows his full name
#History: 2016/02/23 slowrookie
read -p "Please input your first name:" firstname
#提示使用者输入
read -p "Please input your last name:" lastname
#提示使用者输入
echo -e "\nYour full name is :$firstname $lastname"