---
title: centos7.x防火墙
date: 2019-07-14 10:32:44
tags: [linux,防火墙]
---

<!-- toc -->

## linux防火墙操作

### 查询端口是否开放
firewall-cmd --query-port=8080/tcp
### 开放80端口
firewall-cmd --permanent --add-port=80/tcp
### 移除端口
firewall-cmd --permanent --remove-port=8080/tcp

### 重启防火墙(修改配置后要重启防火墙)
firewall-cmd --reload

### 参数解释
1、firwall-cmd：是Linux提供的操作firewall的一个工具；
2、--permanent：表示设置为持久；
3、--add-port：标识添加的端口；