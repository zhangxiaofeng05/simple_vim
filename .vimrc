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
" 按tab键时产生的是4个空格
set expandtab
set autoindent
" 在文本上按下>> <<等缩进,每一级的字符数
set shiftwidth=4
" 光标遇到括号,自动高亮对应的括号
set showmatch
" 回退----undo持久化,需要手动创建到$HOME/.vim/undo目录
if has('persistent_undo') "check if your vim version supports it 
    set undofile "turn on the feature 
    set undodir=$HOME/.vim/undo "directory where the undo files will be stored 
endif


" vim插件的相关配置
" vim-airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='powerlineish'
" MarkdownPreview
" 在打开 markdown 文件后，使用该命令可以打开预览窗口
" map <C-m> :MarkdownPreview<CR>
" 关闭 markdown 预览窗口，并停止开启的服务进程
" map <C-p> :MarkdownPreviewStop<CR>
