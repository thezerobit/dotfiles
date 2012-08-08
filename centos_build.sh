git submodule init && \
git submodule update && \
mkdir -p ~/opt/bin && \
mkdir -p ~/build && \
cd ~/build && \
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2 && \
tar -xvBf vim-7.3.tar.bz2 && \
cd vim73/src && \
./configure --prefix=${HOME}/opt --enable-rubyinterp --disable-netbeans --enable-multibyte && \
make && \
make install && \
echo "Success!!!!"
