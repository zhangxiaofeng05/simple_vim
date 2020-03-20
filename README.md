## 安装  
```
wget https://raw.githubusercontent.com/lionng/simple_vim/master/install.sh
bash install.sh
```
注意:依赖git  

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

## 我的配置vimrc  

```
set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin start------------------------"
" 文件树
Plugin 'scrooloose/nerdtree'
" [Ctrl + n] to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" vim底部栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 最近打开的文件
Plugin 'mhinz/vim-startify'
" 补全括号
Plugin 'jiangmiao/auto-pairs'
" 主题
Plugin 'flazz/vim-colorschemes'
" 代码注释 视图模式选中代码块  注释\cc  取消注释\cu
Plugin 'preservim/nerdcommenter'
" markdown预览
" Plugin 'iamcco/mathjax-support-for-mkdp'
" Plugin 'iamcco/markdown-preview.vim'

" plugin end -------------------------"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------zhangxiaofeng----------------
" 显示行号 或者 set number
set nu
" 语法高亮,自动识别代码,使用多种颜色显示
syntax on
" 不与vi兼容,采用vim自己的操作命令
set nocompatible
" 不支持鼠标,如果想支持把-去掉
set mouse-=a
" 使用utf-8编码
set encoding=utf-8
" 高亮度搜寻
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 设置主题
" colorscheme molokai
colorscheme desert

" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 修改行/列线的外观
" highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent
" 按下 Tab 键时，Vim 显示的空格数
set tabstop=4
" 在文本上按下>> <<等缩进,每一级的字符数
set shiftwidth=4
" 光标遇到括号,自动高亮对应的括号
set showmatch

" vim插件的相关配置
" vim-airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='powerlineish'
" MarkdownPreview
" 在打开 markdown 文件后，使用该命令可以打开预览窗口
" map <C-m> :MarkdownPreview<CR>
" 关闭 markdown 预览窗口，并停止开启的服务进程
" map <C-p> :MarkdownPreviewStop<CR>
"
```

## TODU  

 - [x] install.sh
 - []  uninstall.sh

## 为什么写这个  

vim用的很多,插件能够事半功倍.  
制作属于自己`vimrc`
