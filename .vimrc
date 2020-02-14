call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
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
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fireplace'
Plug 'wincent/command-t'
Plug 'ntpeters/vim-better-whitespace'
Plug 'bhurlow/vim-parinfer'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" theme settings
set background=dark
colorscheme gruvbox

set nu " set line numbering

set autoindent 		" enable indention

" enable strip whitespace on save
let g:strip_whitespace_on_save = 1

" use ESC also in terminal mode
tnoremap <Esc> <C-\><C-n>

" enable rainbow parentheses for clojure
autocmd FileType clojure RainbowToggle

" map ,r to reloading all code and executing the current test file in clojure
nmap ,r :Require! <bar> Eval (clojure.test/run-tests)<CR>

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
let g:syntastic_scss_checkers=['']   " don't use syntastic for sass
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

autocmd BufNewFile,BufRead *.tpl set filetype=html
autocmd Filetype tpl setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

set backspace=indent,eol,start  " fix backspace issues with vim
