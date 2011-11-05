set nocompatible

set hidden
set nowrap
"set number "line numbers
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set backspace=indent,eol,start
set dir=~/.vim/swap
set backupdir=~/.vim/backup
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>


filetype on
filetype plugin on
filetype indent on
if has('autocmd')
    autocmd filetype markdown setlocal textwidth=72
    autocmd filetype python setlocal tabstop=4
    autocmd filetype python setlocal shiftwidth=4
    autocmd filetype python setlocal softtabstop=4
    autocmd filetype php setlocal tabstop=4
    autocmd filetype php setlocal shiftwidth=4
    autocmd filetype php setlocal softtabstop=4
    autocmd filetype javascript setlocal tabstop=4
    autocmd filetype javascript setlocal shiftwidth=4
    autocmd filetype javascript setlocal softtabstop=4
endif

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove search highlights
nnoremap <silent><leader><space> :noh<cr>

" NERDTree stuff
nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

let NERDTreeShowBookmarks=1       " Show the bookmarks table on startup
let NERDTreeShowFiles=1           " Show hidden files, too
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1          " Quit on opening files from the tree
let NERDTreeHighlightCursorline=1 " Highlight the selected entry in the tree
let NERDTreeMouseMode=2           " Use a single click to fold/unfold directories
                                  " and a double click to open files
let CommandTMaxFiles = 30000

syntax enable
" set background=dark
colo darkburn

syntax on

com Q q
com W w
com Wq wq
com WQ wq

" Settings for VimClojure
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "/home/steve/opt/bin/ng"

set encoding=utf-8

" Settings for ack.vim
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
