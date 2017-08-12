call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'alvan/vim-closetag'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-rails'
Plug 'leafgarland/typescript-vim'
Plug 'wincent/command-t', {
  \  'do': 'cd ruby/command-t && ruby extconf.rb && make'
  \ }
call plug#end()

set background=dark " Setting dark mode
colorscheme gruvbox

set nu " set line numbering

set autoindent 		" enable indention

" syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scala_checkers=['']  " don't use syntastic for scala

let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}
" end syntastic stuff

let mapleader = ","

runtime macros/matchit.vim

set swapfile          " enable swapfile
set dir=~/.vim/tmp    " move swapfile to vim folder

autocmd VimEnter * NERDTree     " automatically open NERDTree on startup

autocmd Filetype php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype eruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set backspace=indent,eol,start  " fix backspace issues with vim 
