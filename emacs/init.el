(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(prefer-coding-system 'utf-8-unix)
(set-language-environment "UTF-8")

(set-face-attribute 'default nil :height 100)

(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.cache/emacs/backup")))
(setq auto-save-file-name-transforms
  `((".*" "~/.cache/emacs/auto-save-list" t)))
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)
(setq package-user-dir (string-replace ".config" ".cache" package-user-dir))
(setcar native-comp-eln-load-path
        (string-replace ".config" ".cache" (car native-comp-eln-load-path)))

(eval-when-compile
  (require 'use-package))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
