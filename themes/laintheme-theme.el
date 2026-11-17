;;; laintheme-theme.el --- laintheme
;;; Version: 1.0
;;; Commentary:
;;; A theme called laintheme
;;; Code:

(deftheme laintheme "DOCSTRING for laintheme")
  (custom-theme-set-faces 'laintheme
   ;; Base: deep oxblood background, warm cream text
   '(default ((t (:foreground "#D4C5AA" :background "#2D0000"))))
   '(cursor ((t (:background "#D4C5AA"))))
   '(fringe ((t (:background "#250000"))))
   ;; (old mode-line overridden below)
   '(region ((t (:background "#5A0000"))))
   '(secondary-selection ((t (:background "#450000"))))
   '(hl-line ((t (:background "#3A0000"))))
   '(line-number ((t (:foreground "#6A4040" :background "#280000"))))
   '(line-number-current-line ((t (:foreground "#D4C5AA" :background "#3A0000"))))
   '(vertical-border ((t (:foreground "#4A0000"))))

   ;; Syntax: red spectrum on oxblood
   '(font-lock-builtin-face ((t (:foreground "#C07070"))))
   '(font-lock-comment-face ((t (:foreground "#7A5555"))))
   '(font-lock-function-name-face ((t (:foreground "#E8A0A0"))))
   '(font-lock-keyword-face ((t (:foreground "#CC8080"))))
   '(font-lock-string-face ((t (:foreground "#B06060"))))
   '(font-lock-type-face ((t (:foreground "#D4A0A0"))))
   '(font-lock-constant-face ((t (:foreground "#E0B0A0"))))
   '(font-lock-variable-name-face ((t (:foreground "#E8D8C8"))))
   '(font-lock-warning-face ((t (:foreground "#FF6060" :bold t))))

   ;; Minibuffer / completions
   '(minibuffer-prompt ((t (:foreground "#E8D8C8" :bold t))))

   ;; Modeline — flat, padded, thin accent line
   '(mode-line ((t (:foreground "#E8D8C8" :background "#1A0000"
                    :box (:line-width 4 :color "#1A0000")
                    :overline "#6A2020"))))
   '(mode-line-inactive ((t (:foreground "#5A4A3A" :background "#150000"
                             :box (:line-width 4 :color "#150000")
                             :overline "#3A1010"))))
   '(mode-line-buffer-id ((t (:foreground "#E8D8C8" :bold t))))
   '(mode-line-emphasis ((t (:foreground "#CC8080" :bold t))))

   ;; vterm — monochrome off-white (all ANSI colors → warm cream)
   '(vterm-color-black ((t (:foreground "#6A5A4A" :background "#6A5A4A"))))
   '(vterm-color-red ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-green ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-yellow ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-blue ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-magenta ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-cyan ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(vterm-color-white ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))

   ;; term / ansi-term fallback (same monochrome)
   '(term-color-black ((t (:foreground "#6A5A4A" :background "#6A5A4A"))))
   '(term-color-red ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-green ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-yellow ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-blue ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-magenta ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-cyan ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(term-color-white ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))

   ;; ansi-color (used by comint, compilation, etc.)
   '(ansi-color-black ((t (:foreground "#6A5A4A" :background "#6A5A4A"))))
   '(ansi-color-red ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-green ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-yellow ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-blue ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-magenta ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-cyan ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-white ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-black ((t (:foreground "#7A6A55" :background "#7A6A55"))))
   '(ansi-color-bright-red ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-green ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-yellow ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-blue ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-magenta ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-cyan ((t (:foreground "#D4C5AA" :background "#D4C5AA"))))
   '(ansi-color-bright-white ((t (:foreground "#E8D8C8" :background "#E8D8C8"))))

   ;; Org-mode
   '(org-level-1 ((t (:foreground "#E8A0A0" :bold t))))
   '(org-level-2 ((t (:foreground "#D4C5AA" :bold t))))
   '(org-level-3 ((t (:foreground "#CC8080"))))
   '(org-level-4 ((t (:foreground "#B09080"))))
   '(org-date ((t (:foreground "#C07070" :underline t))))
   '(org-agenda-date ((t (:foreground "#E8A0A0" :bold t))))
   '(org-agenda-date-today ((t (:foreground "#D4C5AA" :bold t :underline t))))
   '(org-scheduled ((t (:foreground "#D4C5AA"))))
   '(org-scheduled-today ((t (:foreground "#E8D8C8"))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'laintheme)

;;; laintheme-theme.el ends here
