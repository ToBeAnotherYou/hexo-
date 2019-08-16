---
title: hexo使用心得
date: 2019-06-17 09:14:44
categories:
- 脚本
tags: 
- linux
- hexo
---

<!-- toc -->

## hexo 编写

1. hexo上传

hexo的更新非常的麻烦,因为是在服务器上生成md文件在编译md文件生成静态文件
我只需要关心md文件的编辑,但是服务器没有图形界面用vi编辑器很不方便就用git仓库来管理在本地计算机上用工具编辑md文件在上传到git服务器在从git更新在hexo g -d编译一下就可以。为了方便写了一个传并更新编译的脚本

```powershell
#!/bin/bash
RELEASE_BOKEBENDI='E:\hexoBoKe\hexo-'
FUWUQI_BOKE='hexo根目录'
FUWUQI_URL='ip地址'
FUWUQI_USER='登录用户'
cd $RELEASE_BOKEBENDI
cd ..
PASSWORD=$(pwd)/'pass.txt'
#代码提交更新
bendi(){
	echo '本地更新代码并提交代码'
	cd $RELEASE_BOKEBENDI
	git pull
	echo '提交代码到本地.......'
	git add .
	git commit -m "脚本提交代码">>commit.log
	echo '拉取代码......'
	git pull>>pull.log
	echo '推送代码到git......'
	git push>>push.log
	pwd
}
#上传服务器并刷新
fuwuqi(){
echo '连接阿里云服务器。。。。。。'
ssh $FUWUQI_USER@$FUWUQI_URL << remotessh
	echo '连接上服务器......'
	cd $FUWUQI_BOKE
	echo '服务器提交代码到本地'
	git add .
	git commit -m "脚本提交代码"
	echo '拉取代码......'
	git pull>>pull.log
	echo '推送代码到git......'
	git push
	echo '重新编译hexo'
	hexo g -d
	echo '完成,退出服务器........'
	exit
remotessh
}
echo '代码提交到git.....'
bendi
echo '服务器从git拉取代码.............'
fuwuqi
echo '更新本地和远程一致避免冲突。。。。。。'
bendi
echo '操作完成。。。。。'
echo '按任意键退出...............
read

```



   

