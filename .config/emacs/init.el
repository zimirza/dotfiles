(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq pop-up-windows nil)
(global-unset-key (kbd "C-z"))

(prefer-coding-system 'utf-8-unix)
(set-language-environment "UTF-8")

(set-face-attribute 'default nil :height 100)

(setq inhibit-splash-screen t)
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.cache/emacs/backup")))
(setq auto-save-file-name-transforms
  `((".*" "~/.cache/emacs/auto-save-list" t)))
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)
(setcar native-comp-eln-load-path
        (string-replace ".config" ".cache" (car native-comp-eln-load-path)))

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(setq line-spacing 0)
(setq column-number-mode t)
(global-display-fill-column-indicator-mode 1)
(setq fill-column 80)

(delete-selection-mode 1)
(electric-indent-mode -1)
(global-auto-revert-mode t)
(global-display-line-numbers-mode 1)
(setq-default truncate-lines t)
(global-visual-line-mode -1)
(setq column-number-mode t)
(setq mode-require-final-newline nil)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

(setq c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )