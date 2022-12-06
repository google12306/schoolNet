# 校园网连接脚本
## 使用方法
该脚本依赖`curl`, 使用之前必须先安装
```bash
# For Debian/Ubuntu
sudo apt update
sudo apt install curl
```

利用`ip a`查询服务器网卡，替换掉脚本内的ip行的网卡名称 
再填入账户信息

更改脚本执行权限`chmod 754 in.sh`,最后执行`./in.sh`即可
可配合定时任务使用

如果有所帮助，欢迎star
