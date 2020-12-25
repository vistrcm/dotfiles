(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ea5822c1b2fb8bb6194a7ee61af3fe2cc7e2c7bab272cbb498a0234984e1b2d9" "c2c501d69cbec36b3936bca770ef4dab426bf8db3cda6249e1816d780b3180a7" default))
 '(package-selected-packages '(projectile better-defaults auto-complete magit cider)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; packages
(load "~/.emacs.d/vist/001_packages.el")
;; add theme
(load "~/.emacs.d/vist/002_set_theme.el")

(ac-config-default)
(global-auto-complete-mode t)

