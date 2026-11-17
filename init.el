;; init.el --- Entry point for Kali WSL
(setq user-emacs-directory "~/.emacs.d/")

;; Handle custom variables separately to keep config.org clean
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Bootstrap Org-Mode to load the literate configuration
(require 'org)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))


(use-package pdf-tools
	:ensure t
	:config
	(pdf-tools-install :no-query)
	;; Default to fitting page to window width
	(setq-default pdf-view-display-size 'fit-width))
