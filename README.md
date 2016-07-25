常用Linux脚本整理
=================
常用linux系统管理脚本整理，按目录区分适用系统版本 <br>

## 下载
git clone https://github.com/zuokerb/linuxshell.git

##使用
### CentOS PHP+NGINX+MYSQL 环境安装
cd ./linuxshell/centos/<br>
chmod +x ./npm-install.sh<br>
./nmp-install.sh<br>

### NGINX 日志切割
cd ./linuxshell/<br>
chmod +x ./nginx-log-cat.sh<br>
./nginx-log-cat.sh<br>
添加crontab每日凌晨3点执行
00 3 * * * {脚本所在目录}/nginx-log-cat.sh