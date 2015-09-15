Emacs Live pack for Go development

Lots of instructions from here:
http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

*Prerequisites*

Go projects used
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/nsf/gocode
go get -u -v github.com/dougm/goflymake

Path settings in ~/.profile
export GOROOT=/usr/local/go
export GOPATH=~/dev/godev
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


Follow instructions here to get Delve debugger to work.
https://github.com/derekparker/delve/wiki/Building
