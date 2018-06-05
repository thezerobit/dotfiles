PATH=$HOME/opt/bin:$PATH

# golang
[[ -d "/usr/lib/go-1.8" ]] && export PATH="$PATH:/usr/lib/go-1.8/bin"
export GOPATH=${HOME}/go
export PATH=$PATH:$GOPATH/bin

