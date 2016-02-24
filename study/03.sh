#!/usr/bin/env bash
#Program:
#Program creates three files, which named by user's input and date command.
#History:
#2015/02/23 slowrookie
#１.让使用者输入档案名称，并取得fileuser这个变数；
echo -e "I will use 'touch' command to create 3 files."
#纯粹显示资讯
read -p "Please input your file name:" fileuser
#提示使用者输入
#2.为了避免使用者随意按Enter，利用变数功能分析档名是否有设定?
filename=${fileuser:-"filename"}
#开始判断有否设定档名
#3.开始利用date指令来取得所需要的档名
date1=$(date -d'2 days ago' +%Y%m%d)
#前两天的日期
date2=$(date -d'1 days ago' +%Y%m%d)
#前一天的日期
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}
#4.建立文档
touch "$file1"
touch "$file2"
touch "$file3"