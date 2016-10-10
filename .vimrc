call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme gruvbox
set background=dark  " Setting dark mode

set nu " set line numbering

set autoindent 		" enable indention
set expandtab 		" use spaces instead of tabs
set tabstop=2 		" use two spaces
set shiftwidth=2 	" use two spaces as indention
