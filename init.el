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
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(live-add-pack-lib "goflymake")
(require 'go-flymake)
;(require 'go-flycheck)

(live-add-pack-lib "go-dlv.el")
(require 'go-dlv)


;; Load go-pack settings
(live-load-config-file "settings.el")
