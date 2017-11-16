set nocompatible
filetype off
set history=1000
set tabstop=4
set softtabstop=4
set shiftwidth=4
set langmenu=zh_CN.UTF-8
set foldmethod=manual
set helplang=cn
set syntax=on
set laststatus=2
set novisualbell
set laststatus=2
set relativenumber
colorscheme desert 
syntax on
"autocmd VimEnter * NERDTree
let NERDTreeWinPos="right"
set ffs=unix
set hlsearch
set ignorecase
set nobackup
set backspace=2
set noswapfile
set statusline+=%8*\ %=\ file:%F\ row:%l/%L\ column:%c\ (%03p%%)
let g:vim_markdown_folding_disabled=1 " Markdown
"let javaScript_fold=1                 " JavaScript
"let perl_fold=1                       " Perl
"let php_folding=1                     " PHP
let r_syntax_folding=1                " R
"let ruby_fold=1                       " Ruby
"let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction

set autoread
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-scripts/taglist.vim'
call vundle#end()
filetype plugin indent on
