;; some trump changes to speedup remote operations
;; details: https://github.com/mpereira/.emacs.d
(require 'tramp)

;; Disable version control on tramp buffers to avoid freezes.
(setq vc-ignore-dir-regexp
      (format "\\(%s\\)\\|\\(%s\\)"
              vc-ignore-dir-regexp
              tramp-file-name-regexp))

;; Don’t clean up recentf tramp buffers.
(setq recentf-auto-cleanup 'never)

;; projectile
(defadvice projectile-project-root (around ignore-remote first activate)
  (unless (file-remote-p default-directory 'no-identification) ad-do-it))

;; This is supposedly faster than the default, scp.
(setq tramp-default-method "ssh")

;; SSH controlmaster settings are set in ~/.ssh/config.
(setq tramp-use-ssh-controlmaster-options nil)

;; Reuse SSH connections.
(customize-set-variable 'tramp-ssh-controlmaster-options
                        (concat
                         "-o ControlPath=/tmp/ssh-tramp-%%r@%%h:%%p "
                         "-o ControlMaster=auto -o ControlPersist=yes"))
