# ZeroBot-docker
自用：使用docker搭建ZeroBot-Plugin  
大佬项目👉[ZeroBot-Plugin](https://github.com/FloatTech/ZeroBot-Plugin)  
go-cqhttp项目👉[Mrs4s/go-cqhttp](https://github.com/Mrs4s/go-cqhttp) 
  
将脚本里的仓库替换成自己Fork大佬的后的库，然后 `docker build -t 镜像名字 --rm .`  
  
```bash  
docker run -itd --name 镜像名字 \   
-v "$(pwd)"/data:/data \  
 --restart always 镜像名字
 ```
 创建好容器后需要进入容器，执行一次cqhttp命令，以生成go-cqhttp的配置文件。
