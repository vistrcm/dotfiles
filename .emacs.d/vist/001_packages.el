(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(defvar my-packages '(better-defaults
		      projectile
		      clojure-mode
		      cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

