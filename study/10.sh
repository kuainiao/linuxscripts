#!/usr/bin/env bash
#Program:
#   Using netstat and grep to detect www, SSH, FTP and Mail services
#History:
#   2016/02/24 slowrookie
echo "Now, I will detecty our linux server's services"
echo "The www, ftp, ssh and mail will be detect!\n"
testing=$(netstat -tuln | grep ":80")
if [ "$testing" ]; then
    echo "www is running in you system"
fi

testing=$(netstat -tuln | grep ":22")
if [ "$testing" ]; then
    echo "ssh is running in you system"
fi

testing=$(netstat -tuln | grep ":21")
if [ "$testing" ]; then
    echo "ftp is running in you system"
fi

testing=$(netstat -tuln | grep ":25")
if [ "$testing" ]; then
    echo "mail is running in you system"
fi

testing=$(netstat -tuln | grep ":9092")
if [ "$testing" ]; then
    echo "h2 database is running in you system"
fi
