Emacs Live pack for Go development

Lots of instructions from here:
http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

*Prerequisites*

Go projects used
go get github.com/rogpeppe/godef
go get -u -v github.com/nsf/gocode

Path settings in ~/.profile
export GOROOT=/usr/local/go
export GOPATH=~/dev/godev
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


//cp src/github.com/nsf/gocode/emacs/go-autocomplete.el ~/.live-packs/go-pack/lib/
