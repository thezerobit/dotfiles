git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/.vim/tmp/swap
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup

vim +PluginInstall +qall
