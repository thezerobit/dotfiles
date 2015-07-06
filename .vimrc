" Initial Vim Setup
" 1. Create important folders:
" mkdir -p ~/.vim/tmp/{swap,undo,backup}
" 2. Clone Vundle:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 3. Install plugins
" vim +PluginInstall +qall

" START Vundle

set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" CtrlP
Plugin 'kien/ctrlp.vim'
" Erlang
Plugin 'jimenezrick/vimerl'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END Vundle

set hidden
"set number "line numbers
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab
set autoindent
set smartindent
set showcmd
set hlsearch
set incsearch
set ruler
set visualbell
set noerrorbells
set ignorecase
set smartcase
set ttyfast
set showmatch
set mouse=a
set history=1000
set undolevels=1000
set title
set backspace=indent,eol,start
" set list
set pastetoggle=<F4>
set colorcolumn=80
set autochdir

" directories for backups
set dir=~/.vim/tmp/swap
set undodir=~/.vim/tmp/undo
set backupdir=~/.vim/tmp/backup
set backup

" wildmenu
set wildmenu
set wildmode=list:longest
set wildignore+=*.swp,*.bak,*.pyc,*.class
set wildignore+=*.DS_Store

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" Don't move on *
" nnoremap * *<c-o>

" we have a new leader
let mapleader = ";"

" digraphs

digraph im 8658 " ⇒ implies
digraph eq 8660 " ⇔ equivalent
digraph no 172  " ¬ not
digraph an 8743 " ∧ and
digraph or 8744 " ∨ or
digraph fa 8704 " ∀ for all
digraph te 8707 " ∃ there exists

filetype on
filetype plugin on
filetype indent on
if has('autocmd')
    autocmd filetype markdown setlocal textwidth=72
    autocmd filetype markdown setlocal fo=atq
    autocmd filetype python setlocal shiftwidth=4
    autocmd filetype python setlocal softtabstop=4
    autocmd filetype php setlocal shiftwidth=4
    autocmd filetype php setlocal softtabstop=4
    autocmd filetype javascript setlocal shiftwidth=4
    autocmd filetype javascript setlocal softtabstop=4
endif

" Syntax highlighting / color
syntax enable
" set background=dark
" colo darkburn
syntax on

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove search highlights
nnoremap <silent><leader><space> :noh<cr>

com Q q
com W w
com Wq wq
com WQ wq

set encoding=utf-8

" Settings for ack.vim
if executable('ack-grep')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" slimv / lisp / paredit
let g:lisp_rainbow=1 " multi-color matched parens
" let g:slimv_preferred = 'clozure'
" slimv repl syntax highlight seems broken
let g:slimv_repl_syntax = 0

au BufRead,BufNewFile *.dats set filetype=ats
au BufRead,BufNewFile *.sats set filetype=ats 

