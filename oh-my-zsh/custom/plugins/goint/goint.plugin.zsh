export GOPATH=/Users/fifman/workspace/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
test -d "$GOPATH" || mkdir "$GOPATH"
export GOBIN=/Users/fifman/workspace/go/bin
alias goget="HTTP_PROXY=socks5://127.0.0.1:1180 HTTPS_PROXY=socks5://127.0.0.1:1180 go get"
