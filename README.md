# Emacs Live pack for Go development

Lots of instructions from here:
http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

# Prerequisites*

brew install go
brew install glide
brew install go-delve/delve/delve --HEAD

go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/nsf/gocode
go get -u -v github.com/dougm/goflymake
go get -u -v golang.org/x/tools/cmd/guru

# Path settings in ~/.profile

export GOROOT=/usr/local/go
export GOPATH=~/dev/godev
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


# Debugger

Follow instructions here to get Delve debugger to work.
https://github.com/derekparker/delve/wiki/Building
https://blog.gopheracademy.com/advent-2015/debugging-with-delve/
