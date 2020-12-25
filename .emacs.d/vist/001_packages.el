(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;;(defvar my-packages '(use-package
;;		      spacemacs-theme
;;		      better-defaults
;;		      projectile
;;		      clojure-mode
;;		      cider))

;;(dolist (p my-packages)
;;  (unless (package-installed-p p)
;;    (package-install p)))


(use-package company
  :ensure t
  :bind (:map company-active-map
	      ("C-n" . company-select-next)
	      ("C-p" . company-select-previous))
  :init
  (setq company-idle-delay 0.01)
  :hook (after-init . global-company-mode)
  )

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))


