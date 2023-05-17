call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

" don't be compatible with vi
set nocompatible

" show command that is being entered
set showcmd

" theme settings
set background=dark
colorscheme gruvbox

" set line numbering
set nu

" enable indention
set autoindent

" enable strip whitespace on save
let g:strip_whitespace_on_save = 1

" use ESC also in terminal mode
tnoremap <Esc> <C-\><C-n>

let mapleader = "," " , for super key

" find all files recursively for file commands
set path=**
" ignore node_modules directory
set wildignore+=node_modules

" show non breaking spaces
set list
set listchars=tab:\ \ ,nbsp:¬

set swapfile          " enable swapfile
set dir=~/.vim/tmp    " move swapfile to vim folder

setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype eruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype sql setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype coffee setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype less setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype css setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype haskell setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

autocmd BufNewFile,BufRead *.tpl set filetype=html
autocmd Filetype tpl setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

set backspace=indent,eol,start  " fix backspace issues with vim

