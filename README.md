ZeroBot-docker

自用：使用docker搭建ZeroBot-Plugin
大佬项目point_rightZeroBot-Plugin
将脚本里的仓库替换成自己Fork大佬的后的库，然后 docker build -t 镜像名字 --rm .

docker run -itd --name 镜像名字 \  
-p 6700:6700 \  
-v "$(pwd)"/mirai:/mirai \  
 --restart always 镜像名字
