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
(set-frame-font "monospace 10" nil t)
(add-to-list 'load-path "~/.config/emacs/themes/emacs-grayscale-theme")
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/emacs-grayscale-theme")

(setq inhibit-splash-screen t)
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.cache/emacs/backup")))
(setq auto-save-file-name-transforms
  `((".*" "~/.cache/emacs/auto-save-list" t)))
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(setq line-spacing 0)
(setq column-number-mode t)

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
(global-auto-revert-mode t)
(global-display-line-numbers-mode t)
(setq display-line-numbers-width 4)
(setq-default indent-tabs-mode nil)
(electric-indent-mode 0)

(setq org-support-shift-select t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )