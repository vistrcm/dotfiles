;; change theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'zenburn)

;; system appearance
;; details: https://github.com/d12frosted/homebrew-emacs-plus#system-appearance-change
(defun my/apply-theme (appearance)
  "Load theme, taking current system APPEARANCE into consideration."
  (mapc #'disable-theme custom-enabled-themes)
  (pcase appearance
    ('light (load-theme 'tango t))
    ('dark (load-theme 'tango-dark t))))

(add-hook 'ns-system-appearance-change-functions #'my/apply-theme)
