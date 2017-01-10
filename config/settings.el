;; go-pack settings

(setq exec-path (cons "/usr/local/opt/go/libexec/bin" exec-path))
(add-to-list 'exec-path "/Users/ken.bedwell/dev/godev/bin")
(add-hook 'before-save-hook 'gofmt-before-save)

(setenv "GOROOT" "/usr/local/opt/go/libexec")
(setenv "GOPATH" "/Users/ken.bedwell/dev/godev")
(setenv "GO15VENDOREXPERIMENT" "1")

(defun local-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go generate && go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'local-go-mode-hook)

(defun auto-complete-for-go ()
  (auto-complete-mode 1))

(add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
   (require 'go-autocomplete))
