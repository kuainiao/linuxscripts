#!/usr/bin/env bash
#Program:
#   you input you demobilization date, I calculate how many days before you demobilize.
#History:
#   2016/02/25 slowrookie
echo "This program will try to calculate:"
echo "How many days before your demobilization date ..."
read -p "Please input you demobilization (YYYYMMDD ex> $(date +%Y%m%d) )": date2

date_d=$(echo "$date2" | grep '[0-9]\{8\}' )
echo -e "$date_d"

if [ !"$date_d" ]; then
    echo "You input the wrong date format ..."
    exit 1
fi

declare -i date_dem = date -d="$date2" +%s
declare -i date_now = date +%s
declare -i date_total_s = $(($date_now - $date_dem))
declare -i date_d $(($date_total_s/60/60/24))

if [ "$date_total_s" < "0" ]; then
    echo "You had been demobilization before:" $((-1 * $date_d)) "ago"
else
    declare -i date_h = $(($(($date_total_s - $date_d * 60 * 60 * 24))/60/60))
    echo "You will demobilize after $date_d days and $date_h hours"
fi
