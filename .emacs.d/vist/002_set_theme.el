;; change theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; window size?
(setq initial-frame-alist '((top . 0) (left . 0) (width . 175) (height . 81)))


(use-package spacemacs-common
    :ensure spacemacs-theme
    :config
    ;; Do not use a different background color for comments.
    (setq spacemacs-theme-comment-bg nil)

    ;; Comments should appear in italics.
    (setq spacemacs-theme-comment-italic t)

    ;; Use the `spacemacs-dark` theme. This is default for console (-nw).
    (load-theme 'spacemacs-dark t))


;; system appearance
;; details: https://github.com/d12frosted/homebrew-emacs-plus#system-appearance-change
(defun my/apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme 'spacemacs-light t))
    ('dark (load-theme 'spacemacs-dark t))))

(add-hook 'ns-system-appearance-change-functions #'my/apply-theme)


;; line numbers
(global-linum-mode 1)

;; font
(add-to-list 'default-frame-alist '(font . "JetBrains Mono-14"))
