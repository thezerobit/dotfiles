set nocompatible

set hidden
set nowrap
"set number "line numbers
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab
set softtabstop=4
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
set background=dark
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
    autocmd filetype python set expandtab
endif

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear highlighted searches with ,/
nmap <silent> ,/ :let @/=""<CR>

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

syntax on
com Q q
com W w
com Wq wq
com WQ wq

" repurpose arrows
map <down> <C-f>
map <silent><left> <ESC>:bp<RETURN>
map <silent><right> <ESC>:bn<RETURN>
map <up> <C-b>
