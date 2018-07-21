export GOPATH=/Users/fifman/workspace/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"
test -d "$GOPATH" || mkdir "$GOPATH"
export GOBIN=/Users/fifman/workspace/go/bin
