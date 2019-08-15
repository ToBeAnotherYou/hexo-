FUWUQI_URL='47.107.96.22'
FUWUQI_USER='root'
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
