;; Do not show the startup screen.
(setq inhibit-startup-message t)

;; Disable tool bar, menu bar, scroll bar.
;;(tool-bar-mode -1)
;;(menu-bar-mode -1)
;;(scroll-bar-mode -1)

;; Highlight current line.
;;(global-hl-line-mode t)

;; Use `command` as `meta` in macOS.
(setq
 mac-command-modifier 'meta
 mac-command-key-is-meta t)

;; Do not use `init.el` for `custom-*` code - use `custom-file.el`.
(setq custom-file "~/.emacs.d/custom-file.el")

;; Assuming that the code in custom-file is execute before the code
;; ahead of this line is not a safe assumption. So load this file
;; proactively.
(load-file custom-file)


;; packages
(load "~/.emacs.d/vist/001_packages.el")

;; theme
(load "~/.emacs.d/vist/002_set_theme.el")

;;; set directory on gui version
(if (display-graphic-p)
    (setq default-directory "~/"))
