#!/bin/sh
#初始化容器脚本
mkdir /zbp

if [ -z $mirai_DIR ]; then
  mirai_DIR=/zbp
fi


if [ -z $MCL_URL ]; then
  MCL_URL=https://ghproxy.com/https://github.com/chenanmo/ZeroBot-Plugin.git
fi

if ! type vim  >/dev/null 2>&1; then
  echo "正在安装基本软件包"
  apt update
  apt install vim wget git -y
else 
  echo "基本软件包已安装"
fi


if [ ! -f $mirai_DIR/run.sh ]; then
  echo "zbp目录为空, 开始下载代码..."
  git clone $MCL_URL $mirai_DIR 
  echo "开始克隆代码"
  chmod a+x "/zbp/run.sh"
else 
  echo "zbp已存在，开始更新"
  cd /zbp&&git pull
  echo "更新完成"
fi
  echo "启动ZeroBot"
  cd $mirai_DIR&&./run.sh &
  echo "启动go-cqhttp"
  cd /data&&cqhttp
