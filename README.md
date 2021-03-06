# Emacs Live pack for Go development

Lots of instructions from here:
http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

# Prerequisites

brew install go

brew install glide

brew install go-delve/delve/delve --HEAD

go get -u -v github.com/rogpeppe/godef

go get -u -v github.com/nsf/gocode

go get -u -v github.com/dougm/goflymake

go get -u -v golang.org/x/tools/cmd/guru

go get -u github.com/golang/lint/golint

go get -u golang.org/x/tools/cmd/goimports

go get -u github.com/go-swagger/go-swagger/cmd/swagger

# Path settings in ~/.profile

export GOROOT=/usr/local/go

export GOPATH=~/dev/godev

export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


# Debugger

Follow instructions here to get Delve debugger to work.

https://github.com/derekparker/delve/wiki/Building

https://blog.gopheracademy.com/advent-2015/debugging-with-delve/

# Notes

- Ensure that `go install` is part of your process.  auto complete doesn't work off of `go build`
