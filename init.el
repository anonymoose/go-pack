;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load go-mode
(live-add-pack-lib "go-mode.el")
(require 'go-mode-autoloads)
;(require 'go-mode)

(live-add-pack-lib "go-autocomplete")
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(live-add-pack-lib "goflymake")
(require 'go-flymake)
;(require 'go-flycheck)

;; Load go-pack settings
(live-load-config-file "settings.el")
