#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Wed Apr 29 21:50:24 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install git 
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

echo install git
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    sudo apt-get update && sudo apt-get upgrade
    sudo apt-get install git                # 自动安装git
elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install git
else
    echo Unknown system
fi


git --version # 确认git版本
# 第一次使用前
git config --global user.name "DC-Melo"           # 设置用户名，注意git config命令的--global参数，用了这个参数，表示你这台机器上所有的Git仓库都会使用这个配置，当然也可以对某个仓库指定不同的用户名和Email地址。
git config --global user.email "melo.dachor@gmail.com"         # 设置电子邮箱
git config user.name                                # 查看用户名
git config user.email                               # 查看电子邮箱
git config --list                                   # 查看所有用户信息

echo 'ssh-keygen -t rsa -C "dc-mac-ssh-keys"'
