;; go-pack settings

(setq exec-path (cons "/usr/local/opt/go/libexec/bin" exec-path))
(add-to-list 'exec-path "/Users/ken.bedwell/dev/godev/bin")
(add-hook 'before-save-hook 'gofmt-before-save)

(setenv "GOROOT" "/usr/local/opt/go/libexec")
(setenv "GOPATH" "/Users/ken.bedwell/dev/godev")
;(setenv "GOPATH" "/Users/ken.bedwell/dev/godev:/Users/ken.bedwell/dev/godev/src:/Users/ken.bedwell/dev/godev/src/github.com/randrr/fingerprint-service/vendor")
(setenv "GO15VENDOREXPERIMENT" "1")

(add-hook 'go-mode-hook 'go-eldoc-setup)

(defun go-mode-setup ()
  (go-eldoc-setup)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)

  (setq tab-width 4)
  (setq indent-tabs-mode 1)
  (setq compile-command "go build -v && go test -v && go vet && golint")
  (define-key (current-local-map) "\C-d\C-c" 'compile)
)

(add-hook 'go-mode-hook 'go-mode-setup)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)

;; (defun auto-complete-for-go ()
;;   (auto-complete-mode 1))

;; (add-hook 'go-mode-hook 'auto-complete-for-go)

;; (with-eval-after-load 'go-mode
;;    (require 'go-autocomplete))
