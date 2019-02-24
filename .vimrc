call plug#begin('~/.vim/plugged')
Plug 'ntpeters/vim-better-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-rails'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'kylef/apiblueprint.vim'
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

let g:syntastic_java_checkers=['']
let g:syntastic_scala_checkers=['']  " don't use syntastic for scala
let g:syntastic_html_checkers=['']   " don't use syntastic for html
let g:syntastic_javascript_checkers = ['eslint'] " use eslint for javascript
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}
" end syntastic stuff

let mapleader = "," " , for super key

" ignore node_modules directory
set wildignore+=node_modules

let g:go_fmt_command = "goimports" " run goimports instead of gofmt

" BEGIN nerdtree tabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1 	" open NERDTree when starting vim
let g:nerdtree_tabs_autoclose=0 		" dont close window if only NERDTree is open
" END nerdtree tabs

runtime macros/matchit.vim

autocmd VimEnter * NERDTree     " automatically open NERDTree on startup

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
autocmd Filetype apiblueprint setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set backspace=indent,eol,start  " fix backspace issues with vim
