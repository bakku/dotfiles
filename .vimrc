call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'

call plug#end()

colorscheme gruvbox
set background=dark  " Setting dark mode

set nu " set line numbering

set autoindent 		" enable indention
set expandtab 		" use spaces instead of tabs
set tabstop=2 		" use two spaces
set shiftwidth=2 	" use two spaces as indention

" syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end syntastic stuff

set swapfile          " enable swapfile
set dir=~/.vim/tmp    " move swapfile to vim folder

autocmd VimEnter * NERDTree     " automatically open NERDTree on startup

set backspace=indent,eol,start  " fix backspace issues with vim 
