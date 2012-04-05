set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

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
set title
set backspace=indent,eol,start
set list
set pastetoggle=<F2>
set colorcolumn=80

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
nnoremap * *<c-o>

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

" crap I stole from @tpope
set laststatus=2 " Always show status line
if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
  let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif

filetype on
filetype plugin on
filetype indent on
if has('autocmd')
    autocmd filetype markdown setlocal textwidth=72
    autocmd filetype markdown setlocal fo=atq
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

" Syntax highlighting / color
syntax enable
set background=dark
colo darkburn
syntax on

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

" Command-T settings:
let CommandTMaxFiles = 30000

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
if executable('ack-grep')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Set filetypes
au BufRead,BufNewFile *.smarty.html set filetype=smarty
