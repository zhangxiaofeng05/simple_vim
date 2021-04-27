"-------------------
" vim-plug  https://github.com/junegunn/vim-plug
"-------------------

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'scrooloose/nerdtree'
" [Ctrl + n] to open NERDTree
map <C-n> :NERDTreeToggle<CR>

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" The fancy start screen for Vim
Plug 'mhinz/vim-startify'
" one colorscheme pack to rule them all
Plug 'flazz/vim-colorschemes'
" Vim plugin for intensely nerdy commenting powers
Plug 'preservim/nerdcommenter'

" markdown : only local can run "
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'
"map <C-m> :MarkdownPreview<CR>
"map <C-p> :MarkdownPreviewStop<CR>

" Initialize plugin system
call plug#end()
