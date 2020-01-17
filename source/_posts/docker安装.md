---
title: docker安装
date: 2020-01-16 11:32:44
categories:
- docker
tags: 
- linux
- docker
---

#     docker的安装与卸载

### 卸载docker

   

```shell
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
```

------

### 安装docker

 1. ##### 安装所需要的软件包。`yum-utils`提供了`yum-config-manager` 效用，并`device-mapper-persistent-data`和`lvm2`由需要 `devicemapper`存储驱动程序


   ```shell
   sudo yum install -y yum-utils \
     device-mapper-persistent-data \
     lvm2
   ```

2. ##### 使用以下命令来设置**稳定的**存储库。

```shell
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

3. #### 安装最新版docker
```shel
yum install docker-ce docker-ce-cli containerd.iol
```