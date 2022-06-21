"-------------------
" vim-plug  https://github.com/junegunn/vim-plug
"-------------------

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
" [Ctrl + n] to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" 快速注释：\cc(注释)  \cu(取消注释)
Plug 'preservim/nerdcommenter'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme="dark"
" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" tagbar
" brew install ctags
Plug 'preservim/tagbar'

" 快捷对齐 :Tab /\/\/
Plug 'godlygeek/tabular'

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'

" 配色方案 colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

" The fancy start screen for Vim
Plug 'mhinz/vim-startify'
" search
Plug 'ctrlpvim/ctrlp.vim'
" 全局搜索
" 需要安装 brew install ack
Plug 'mileszs/ack.vim'
" shell
Plug 'dense-analysis/ale'
" 高亮todo
Plug 'freitass/todo.txt-vim'

"----optional start---------
" icons
Plug 'ryanoasis/vim-devicons'
" 使用上边的文件图标，需要安装字体
"https://github.com/ryanoasis/nerd-fonts
" YouCompleteMe
Plug 'ycm-core/YouCompleteMe'
" debug
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 50vnew',
      \ 'stack':      'rightbelow 10new',
      \ }
      " \ 'goroutines':      'rightbelow 10new',
map <leader>ds :GoDebugStart<cr>
map <leader>dc :GoDebugContinue<cr>
map <leader>dn :GoDebugNext<cr>
map <leader>dt :GoDebugStop<cr>
map <leader>db :GoDebugBreakpoint<cr>
""----optional end-----------

" Initialize plugin system
call plug#end()

" 设置主题
"colorscheme dracula
colorscheme gruvbox


" 显示行号 或者 set number
set nu
" 语法高亮,自动识别代码,使用多种颜色显示
syntax enable
syntax on
filetype plugin on
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
" 搜索时大小写不敏感
set ignorecase

" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 修改行/列线的外观
" highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
"set autoindent
" 按下 Tab 键时，Vim 显示的空格数
set tabstop=4
" 在文本上按下>> <<等缩进,每一级的字符数
set shiftwidth=4
" 光标遇到括号,自动高亮对应的括号
set showmatch
set backspace=2

" 在底部显示键入的指令
set showcmd
" 命令模式用 Tab 自动补全
set wildmenu


