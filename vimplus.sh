#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Wed Apr 29 21:50:24 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install vimplus
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    # 版本要求
    # ubuntu16.04及其以上系统。

    # 安装vimplus(建议在普通用户下安装)
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
elif [  -n "$(uname -a | grep -i centos)" ]; then
    # 版本要求
    # centos7及其以上系统。
    # 安装vimplus(建议在普通用户下安装)
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    # 安装HomeBrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # 安装vimplus
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
else
    echo Unknown system
fi

# Q & A
# 安装vimplus后Airline等插件有乱码，怎么解决？
# linux和mac系统需设置终端字体为Droid Sans Mono Nerd Font。

