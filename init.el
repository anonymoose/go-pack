;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load go-mode
(live-add-pack-lib "go-mode.el")
(require 'go-mode-autoloads)
;(require 'go-mode)
(require 'go-guru)    ; https://github.com/dominikh/go-mode.el/blob/master/go-guru.el

(live-add-pack-lib "go-autocomplete")
(ac-config-default)
(require 'auto-complete-config)
(require 'go-autocomplete)


;(live-add-pack-lib "goflymake")
;(require 'go-flymake)
;;;;;;  doesn't work - (require 'go-flycheck)

(live-add-pack-lib "go-dlv.el")
(require 'go-dlv)

(live-add-pack-lib "go-eldoc")
(require 'go-eldoc)

(live-add-pack-lib "golint")
(require 'golint)

;; Load go-pack settings
(live-load-config-file "settings.el")
