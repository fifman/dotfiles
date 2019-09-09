export GOPATH=/Users/fifman/workspace/go
export GOROOT="$(brew --prefix)/opt/golang/libexec"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
test -d "$GOPATH" || mkdir -p "$GOPATH"
export GOBIN=$GOPATH/bin
alias goget="HTTP_PROXY=socks5://127.0.0.1:1180 HTTPS_PROXY=socks5://127.0.0.1:1180 go get"
export GOPROXY=https://mirrors.aliyun.com/goproxy/
