#! /usr/bin/expect -f

#实现服务器的自动登录
#auto upload file

set login_user "root"
set login_host "120.25.206.161"
set login_password "jcB123123\r"

set local_file "/home/liujx/startup.sh"
set remote_file "/var/www"

spawn scp $local_file $login_user@$login_host:$remote_file
set timeout -1
expect "*password:"
send $login_password

#交互模式,用户会停留在远程服务器上面.
interact



