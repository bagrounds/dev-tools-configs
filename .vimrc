" .vimrc
" This file configures vim sessions.
"
" 1. load plugins
" 2. set values and configure plugins
"
" @author Bryan Grounds <bagrounds@gmail.com>
"

call pathogen#infect()

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" load plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'pangloss/vim-javascript'
Plug '907th/vim-auto-save'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'ahdinosaur-os/npm.vim'
Plug 'digitaltoad/vim-pug'
Plug 'scrooloose/nerdcommenter'
Plug 'elzr/vim-json'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'wavded/vim-stylus'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'

" add plugins to runtimepath
call plug#end()

set autoread

" allow backspace to delete stuff not added this session
set backspace=indent,eol,start

" use line numbers
set number

" highlight search items
set hlsearch

" perform partial searches while entering search items
set incsearch

" enable mouse
set ttyfast
set mouse=a
set ttymouse=xterm2

" c-n toggles NERDTree
map <C-n> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" use two spaces for tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set t_Co=16
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" mark 80th column
set colorcolumn=80

" highlight (81+)th columns red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" configure auto-save
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0

" configure Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" configure ultisnips
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

