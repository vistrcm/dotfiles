;; change theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; window size?
(setq initial-frame-alist '((top . 0) (left . 0) (width . 175) (height . 81)))

;; (use-package spacemacs-common
;;   :ensure spacemacs-theme
;;   :config
;;   ;; Do not use a different background color for comments.
;;   (setq spacemacs-theme-comment-bg nil)

;;   ;; Comments should appear in italics.
;;   (setq spacemacs-theme-comment-italic t)

;;   ;; Use the `spacemacs-dark` theme. This is default for console (-nw).
;;   (load-theme 'spacemacs-dark t))


(use-package doom-themes
  :ensure t

  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (setq-default frame-title-format "%b (%f)")
  (set-face-attribute 'default nil :height 120 :family "Fira Code")
  ;; only works on mac!
  ;; turns on ligatures
  ;;(mac-auto-operator-composition-mode)

  (unless (display-graphic-p)
    (menu-bar-mode -1)) ;; remove menu bar in terminal
  
  (tool-bar-mode -1) ;; remove toolbar
  (global-linum-mode)
  ;; enable y/n answers
  (fset 'yes-or-no-p 'y-or-n-p)
  ;; Newline at end of file
  (setq require-final-newline t)
  (show-paren-mode 1) ;; highlight matching parens
  ;; Wrap lines at 80 characters
  (setq-default fill-column 80)
  (setq-default indent-tabs-mode nil)   ;; don't use tabs to indent
  (setq-default tab-width 8)            ;; but maintain correct appearance)

  :config
  (require 'doom-themes)
  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
  ;; may have their own settings.
  ;; (load-theme 'doom-dracula t)
  (if (display-graphic-p)
      (load-theme 'doom-one-light t)
    (load-theme 'doom-nord t))

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
                                        ;(doom-themes-neotree-config)
  ;; or for treemacs users
  (doom-themes-treemacs-config)
  (when (fboundp 'scroll-bar-mode) ;; don't show emacs scroll bars when graphical
    (scroll-bar-mode -1))
  ;; Corrects (and improves) org-mode's native fontification.
  ;; (doom-themes-org-config)
  )
  



  ;; system appearance
  ;; details: https://github.com/d12frosted/homebrew-emacs-plus#system-appearance-change
  (defun my/apply-theme (appearance)
    "Load theme, taking current system APPEARANCE into consideration."
    (mapc #'disable-theme custom-enabled-themes)
    (pcase appearance
      ('light (load-theme 'doom-one-light t))
      ('dark (load-theme 'doom-one t))))

;; automated theme switching disabled for now
;; (add-hook 'ns-system-appearance-change-functions #'my/apply-theme)


;; all-the-icons required for the doom-modeline
;; goint to install it only for UI
(if (display-graphic-p)
    (use-package all-the-icons
      :ensure t
      :config
      (unless (member "all-the-icons" (font-family-list))
        (all-the-icons-install-fonts t))))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; line numbers
(global-linum-mode 1)

;; font
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-14"))

