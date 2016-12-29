set lines=70
set columns=200
set mouse=a

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'fatih/vim-go'

Plugin 'Valloric/YouCompleteMe'

Plugin 'flazz/vim-colorschemes'

Bundle 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin indent on
set incsearch
set ignorecase
set smartcase
set scrolloff=2
set wildmode=longest,list
set expandtab
set number
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hidden
nmap :Q :q

set transparency=10
set background=dark
set guifont=Monaco:h16

autocmd vimenter * NERDTree

" colorscheme 3dglasses 

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
nmap <F8> :TagbarToggle<CR>
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd VimEnter * nested :TagbarOpen
set completeopt=menu

