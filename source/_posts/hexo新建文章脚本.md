---
title: hexo新建文章脚本
date: 2019-08-15 17:30:05
categories:
- 脚本
tags:
- hexo
- 脚本
---



### hexo在本地向服务器新建页面脚本

##### shell脚本:

```shell
FUWUQI_URL='服务器ip'
FUWUQI_USER='用户'
FUWUQI_BOKE='/root/panboke'

echo '请输入文章名称:'
read titleName
newTitle(){
echo '链接阿里服务器------------'
ssh $FUWUQI_USER@$FUWUQI_URL << remotessh
	echo '连接上服务器......'
	cd $FUWUQI_BOKE
	hexo new post $titleName
	echo '编译---------'
remotessh
}
length=$(expr length "$titleName") 
if [ -n "$titleName" ]; then
	newTitle
	echo '按任意键退出-------'
	read
else
	echo '不能输入空字符!!!!!'
	echo '按任意键退出-------'
	read
fi
```

