#!/bin/bash

# 获取日期
function get_datetime()
{
    time=$(date "+%Y%m%d%H%M%S")
	echo $time
}

# 判断文件是否存在
function is_exist_file()
{
	filename=$1
	if [ -f $filename ]; then
		echo 1
	else
		echo 0
	fi
}

# 判断目录是否存在
function is_exist_dir()
{
	dir=$1
	if [ -d $dir ]; then
		echo 1
	else
		echo 0
	fi
}

# 备份原有的.vimrc文件
function backup_vimrc_file()
{
	old_vimrc=$HOME"/.vimrc"
    is_exist=$(is_exist_file $old_vimrc)
    if [ $is_exist == 1 ]; then
        time=$(get_datetime)
        backup_vimrc=$old_vimrc"_bak_"$time
        read -p "Find "$old_vimrc" already exists,backup "$old_vimrc" to "$backup_vimrc"? [Y/N] " ch
        if [[ $ch == "Y" ]] || [[ $ch == "y" ]]; then
            mv $old_vimrc $backup_vimrc
		else
			/bin/rm $old_vimrc
        fi
    fi
}

#备份原有的.vim目录
function backup_vim_dir()
{
    old_vim=$HOME"/.vim"
    is_exist=$(is_exist_dir $old_vim)
    if [ $is_exist == 1 ]; then
        time=$(get_datetime)
        backup_vim=$old_vim"_bak_"$time
        read -p "Find "$old_vim" already exists,backup "$old_vim" to "$backup_vim"? [Y/N] " ch
        if [[ $ch == "Y" ]] || [[ $ch == "y" ]]; then
            mv -R $old_vim $backup_vim
		else
			/bin/rm -rf $old_vim
        fi
    fi
}

# 备份原有的.vimrc和.vim
function backup_vimrc_and_vim()
{
	backup_vimrc_file
	backup_vim_dir
}

# 安装vim插件
function install_vim_plugin()
{
	vim +PluginInstall +qall
}

# 打印安装成功的信息
function print_success()
{
	echo 'Just enjoy it!'
}

# 获取当前时间戳
function get_now_timestamp()
{
    cur_sec_and_ns=`date '+%s-%N'`
    echo ${cur_sec_and_ns%-*}
}

# main函数
function main()
{
	begin=`get_now_timestamp`

	# 温馨提示
	echo "脚本执行依赖git"

	# 备份
	backup_vimrc_and_vim
	# 安装插件管理器Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# 下载vimrc
	cd $HOME
	#wget http://39.107.227.122:5000/linux/vim/.vimrc
	wget https://raw.githubusercontent.com/lionng/simple_vim/master/.vimrc

	# 执行安装插件的命令
	install_vim_plugin

	# success
	print_success
		
	end=`get_now_timestamp`
    second=`expr ${end} - ${begin}`
    min=`expr ${second} / 60`
    echo "It takes "${min}" minutes."

}

# 调用main函数
main
