## 安装  
```
wget https://raw.githubusercontent.com/lionng/simple_vim/master/install.sh
bash install.sh
```
注意:依赖git  

## demo  

![demo](https://raw.githubusercontent.com/lionng/simple_vim/master/images/demo1.png)

## vim  

1. vim官方地址 : https://github.com/vim/vim  ![](https://img.shields.io/github/stars/vim/vim)  ![](https://img.shields.io/github/forks/vim/vim)  

2. 查看vim支持的功能  
$ `vim --version`  
eg:查看vim是否支持python $ `vim --version | grep python`  
+代表支持,-代表不支持  

3. vim配置文件--vimrc  
系统配置文件路径: /etc/vim/vimrc  
用户配置文件路径: ~/.vimrc  

## vim插件管理

|名称|GitHub地址|stars|forks|
|----|---------|-----|----|
|VundleVim|https://github.com/VundleVim/Vundle.vim|![](https://img.shields.io/github/stars/VundleVim/Vundle.vim)|![](https://img.shields.io/github/forks/VundleVim/Vundle.vim)|
|vim-plug|https://github.com/junegunn/vim-plug|![](https://img.shields.io/github/stars/junegunn/vim-plug)|![](https://img.shields.io/github/forks/junegunn/vim-plug)|

插件管理器,帮助我们更好的管理插件  
VundleVim经典好用,vim-plug并行,速度快  

## 我的插件

|名称|GitHub地址|简介|stars|forks|
|----|---------|----|----|-----|
|nerdtree|https://github.com/preservim/nerdtree|文件树|![](https://img.shields.io/github/stars/preservim/nerdtree)|![](https://img.shields.io/github/forks/preservim/nerdtree)|
|vim-airline|https://github.com/vim-airline/vim-airline|vim底栏增强,替代品可用powerline|![](https://img.shields.io/github/stars/vim-airline/vim-airline)|![](https://img.shields.io/github/forks/vim-airline/vim-airline)|
|vim-startify|https://github.com/mhinz/vim-startify|vim启动的页面|![](https://img.shields.io/github/stars/mhinz/vim-startify)|![](https://img.shields.io/github/forks/mhinz/vim-startify)|

## 其他的插件  
由于用插件管理器安装复杂,特定的安装方式  

1. YouCompleteMe  
https://github.com/ycm-core/YouCompleteMe  
```
# 试试这个命令，看是否已经安装 vim-addons
$ vim-addons
# 如果没有安装 vim-addons，则需安装 vim-addon-manager
$ sudo apt-get install vim-addon-manager
# 开始安装 YouCompleteMe
$ sudo apt-get install vim-youcompleteme
# 将 YCM 加入 addons 管理器中
$ vim-addons install youcompleteme
```

## TODU  

1. - [x] install.sh  
2. - [ ]  uninstall.sh  

## 为什么写这个  

vim用的很多,插件能够事半功倍.  
制作属于自己`vimrc`

