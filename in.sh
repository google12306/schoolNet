#!/bin/bash
# 根据服务器网卡具体情况，选择替换掉eth0
ip=$(ip addr | awk '/inet/ && /eth0/{sub(/\/.*$/,"",$2); print $2}')
mac=$(ifconfig | awk '/eth3/{gsub(/:/,"",$5);print tolower($5)}')
# 此处填写账号
user="3110000"
# 此处填写密码
pwd="123123"
# 此处选择运营商，telecom/cmm/unicom
isp="telecom"

curl -v "http://192.168.200.2:801/eportal/?c=Portal&a=login&callback=dr1003&login_method=1&user_account=%2C0%2C$user%40$isp&user_password=$pwd&wlan_user_ip=$ip&wlan_user_ipv6=&wlan_user_mac=000000000000&wlan_ac_ip=&wlan_ac_name=&jsVersion=3.3.3&v=9921"
