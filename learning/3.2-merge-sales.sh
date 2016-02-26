#! /bin/sh
# merge-sales.sh
#删除注释并排序注释文件
sed '/^#/d' quotas | sort > quotas.sorted
sed '/^#/d' sales  | sort > sales.sorted

join quotas.sorted sales.sorted
rm *.sorted