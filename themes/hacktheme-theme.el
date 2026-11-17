;;; hacktheme-theme.el --- .hack//SIGN × Shikigami 式神 -*- lexical-binding: t -*-
;;; Version: 2.1
;;; Commentary:
;;; Black ground, vermillion fire, off-white clarity, lilac spirit.
;;; Status bars: off-white ground with vermillion text.
;;; All body text uniform off-white. No blues. No greens.
;;; Code:

(deftheme hacktheme "The World — .hack × 式神 v2")

(let (;; Backgrounds
      (bg-deep    "#000000")    ; true black
      (bg-main    "#080808")    ; main editing — near-black
      (bg-alt     "#101010")    ; sidebar, inactive areas
      (bg-hover   "#1A1A1A")    ; hl-line, hover
      (bg-select  "#2A1520")    ; region / selection (faint vermillion tint)
      (bg-panel   "#E8E0D4")    ; modeline — off-white

      ;; Vermillion spectrum (fire, action, identity)
      (verm-bright "#E34234")   ; pure vermillion — primary accent
      (verm-main   "#CC4125")   ; keywords, modeline text
      (verm-warm   "#E8654A")   ; functions, headings
      (verm-soft   "#C0604A")   ; strings
      (verm-dim    "#7A3A2A")   ; comments
      (verm-glow   "#4A2015")   ; accent lines, borders
      (verm-deep   "#2A100A")   ; subtle separators

      ;; Off-white spectrum (clarity, structure)
      (white-bright "#FAF0E6")  ; linen — bright emphasis
      (white-main   "#E8DDD0")  ; primary text
      (white-warm   "#D4C8B8")  ; secondary text
      (white-dim    "#8A8078")  ; faded text
      (white-faint  "#5A5450")  ; very faded
      (white-panel  "#E8E0D4")  ; modeline background

      ;; Lilac spectrum (spirit, variables, secondary)
      (lilac-bright "#C8A2C8")  ; bright lilac — types, active
      (lilac-main   "#B19CD9")  ; variable names, links
      (lilac-soft   "#9A85B8")  ; secondary
      (lilac-dim    "#6A5A7A")  ; faded, inactive
      (lilac-deep   "#3A2A4A")  ; subtle tint

      ;; Accent (warnings, constants — amber kept for contrast)
      (amber-bright "#FFB347")  ; warnings
      (amber-main   "#D4A017")  ; constants, numbers
      (amber-soft   "#B08A30"))  ; secondary amber

  (custom-theme-set-faces
   'hacktheme

   ;; ═══════════════════════════════════════════
   ;; Core
   ;; ═══════════════════════════════════════════
   `(default ((t (:foreground ,white-main :background ,bg-main))))
   `(cursor ((t (:background ,verm-bright))))
   `(fringe ((t (:background ,bg-deep))))
   `(region ((t (:background ,bg-select))))
   `(secondary-selection ((t (:background ,verm-deep))))
   `(hl-line ((t (:background ,bg-hover))))
   `(line-number ((t (:foreground ,white-faint :background ,bg-deep))))
   `(line-number-current-line ((t (:foreground ,verm-bright :background ,bg-hover))))
   `(vertical-border ((t (:foreground ,verm-glow))))
   `(shadow ((t (:foreground ,white-dim))))
   `(link ((t (:foreground ,verm-warm :underline t))))
   `(link-visited ((t (:foreground ,verm-soft :underline t))))
   `(highlight ((t (:background ,bg-hover))))
   `(error ((t (:foreground ,verm-bright :bold t))))
   `(warning ((t (:foreground ,amber-bright :bold t))))
   `(success ((t (:foreground ,lilac-bright :bold t))))
   `(trailing-whitespace ((t (:background ,verm-deep))))
   `(escape-glyph ((t (:foreground ,amber-main))))

   ;; ═══════════════════════════════════════════
   ;; Syntax — vermillion core + lilac + off-white
   ;; ═══════════════════════════════════════════
   `(font-lock-keyword-face ((t (:foreground ,verm-bright))))
   `(font-lock-function-name-face ((t (:foreground ,verm-warm))))
   `(font-lock-builtin-face ((t (:foreground ,lilac-bright))))
   `(font-lock-type-face ((t (:foreground ,lilac-main))))
   `(font-lock-constant-face ((t (:foreground ,amber-main))))
   `(font-lock-variable-name-face ((t (:foreground ,lilac-soft))))
   `(font-lock-string-face ((t (:foreground ,verm-soft))))
   `(font-lock-comment-face ((t (:foreground ,verm-dim :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,verm-dim :italic t))))
   `(font-lock-doc-face ((t (:foreground ,lilac-dim :italic t))))
   `(font-lock-warning-face ((t (:foreground ,verm-bright :bold t))))
   `(font-lock-negation-char-face ((t (:foreground ,amber-bright))))
   `(font-lock-preprocessor-face ((t (:foreground ,amber-soft))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,amber-main))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,amber-bright))))

   ;; ═══════════════════════════════════════════
   ;; Minibuffer / completions
   ;; ═══════════════════════════════════════════
   `(minibuffer-prompt ((t (:foreground ,verm-bright :bold t))))
   `(completions-common-part ((t (:foreground ,lilac-main))))
   `(completions-first-difference ((t (:foreground ,verm-warm :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Modeline — off-white bg, vermillion text
   ;; ═══════════════════════════════════════════
   `(mode-line ((t (:foreground ,verm-main :background ,white-panel
                    :box (:line-width 4 :color ,white-panel)
                    :overline ,verm-glow))))
   `(mode-line-inactive ((t (:foreground ,verm-dim :background ,white-warm
                             :box (:line-width 4 :color ,white-warm)
                             :overline ,verm-glow))))
   `(mode-line-buffer-id ((t (:foreground ,verm-bright :bold t))))
   `(mode-line-emphasis ((t (:foreground "#8B0000" :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Header line
   ;; ═══════════════════════════════════════════
   `(header-line ((t (:foreground ,verm-main :background ,white-panel
                      :box (:line-width 3 :color ,white-panel)
                      :underline ,verm-glow))))

   ;; ═══════════════════════════════════════════
   ;; Tab bar
   ;; ═══════════════════════════════════════════
   `(tab-bar ((t (:foreground ,white-dim :background ,bg-deep))))
   `(tab-bar-tab ((t (:foreground ,verm-bright :background ,white-panel
                      :box (:line-width 4 :color ,white-panel)
                      :overline ,verm-main :bold t))))
   `(tab-bar-tab-inactive ((t (:foreground ,lilac-dim :background ,bg-alt
                               :box (:line-width 4 :color ,bg-alt)))))

   ;; ═══════════════════════════════════════════
   ;; Vertico / Marginalia
   ;; ═══════════════════════════════════════════
   `(vertico-current ((t (:background ,bg-select :foreground ,white-bright))))
   `(marginalia-documentation ((t (:foreground ,lilac-dim :italic t))))
   `(marginalia-key ((t (:foreground ,lilac-main))))
   `(marginalia-value ((t (:foreground ,amber-soft))))

   ;; ═══════════════════════════════════════════
   ;; Which-key
   ;; ═══════════════════════════════════════════
   `(which-key-key-face ((t (:foreground ,verm-bright :bold t))))
   `(which-key-separator-face ((t (:foreground ,verm-dim))))
   `(which-key-command-description-face ((t (:foreground ,white-main))))
   `(which-key-group-description-face ((t (:foreground ,lilac-main))))

   ;; ═══════════════════════════════════════════
   ;; Treemacs sidebar
   ;; ═══════════════════════════════════════════
   `(treemacs-root-face ((t (:foreground ,verm-bright :bold t :height 1.1))))
   `(treemacs-directory-face ((t (:foreground ,lilac-main))))
   `(treemacs-file-face ((t (:foreground ,white-main))))
   `(treemacs-git-modified-face ((t (:foreground ,amber-main))))
   `(treemacs-git-added-face ((t (:foreground ,lilac-bright))))
   `(treemacs-git-untracked-face ((t (:foreground ,verm-soft))))
   `(treemacs-git-ignored-face ((t (:foreground ,white-faint))))
   `(treemacs-fringe-indicator-face ((t (:foreground ,verm-bright))))

   ;; ═══════════════════════════════════════════
   ;; Dashboard
   ;; ═══════════════════════════════════════════
   `(dashboard-banner-logo-title ((t (:foreground ,verm-bright :bold t :height 1.2))))
   `(dashboard-heading ((t (:foreground ,verm-warm :bold t))))
   `(dashboard-items-face ((t (:foreground ,white-main))))
   `(dashboard-no-items-face ((t (:foreground ,white-dim))))
   `(dashboard-footer ((t (:foreground ,lilac-dim :italic t))))
   `(dashboard-navigator ((t (:foreground ,lilac-main))))

   ;; ═══════════════════════════════════════════
   ;; Doom modeline
   ;; ═══════════════════════════════════════════
   `(doom-modeline-bar ((t (:background ,verm-bright))))
   `(doom-modeline-bar-inactive ((t (:background ,verm-deep))))
   `(doom-modeline-buffer-file ((t (:foreground ,verm-main :bold t))))
   `(doom-modeline-buffer-modified ((t (:foreground "#8B0000" :bold t))))
   `(doom-modeline-buffer-major-mode ((t (:foreground ,verm-main :bold t))))
   `(doom-modeline-project-dir ((t (:foreground ,lilac-dim))))
   `(doom-modeline-info ((t (:foreground ,lilac-main))))
   `(doom-modeline-warning ((t (:foreground ,amber-bright))))
   `(doom-modeline-urgent ((t (:foreground ,verm-bright))))
   `(doom-modeline-evil-normal-state ((t (:foreground ,verm-bright :bold t))))
   `(doom-modeline-evil-insert-state ((t (:foreground ,amber-bright :bold t))))
   `(doom-modeline-evil-visual-state ((t (:foreground ,lilac-bright :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Magit
   ;; ═══════════════════════════════════════════
   `(magit-section-heading ((t (:foreground ,verm-warm :bold t))))
   `(magit-section-highlight ((t (:background ,bg-hover))))
   `(magit-branch-local ((t (:foreground ,lilac-main))))
   `(magit-branch-remote ((t (:foreground ,lilac-bright))))
   `(magit-diff-added ((t (:foreground ,lilac-main :background "#1A0A1A"))))
   `(magit-diff-added-highlight ((t (:foreground ,lilac-bright :background "#2A0F1A"))))
   `(magit-diff-removed ((t (:foreground ,verm-soft :background "#1A0A0A"))))
   `(magit-diff-removed-highlight ((t (:foreground ,verm-bright :background "#2A0F0F"))))
   `(magit-diff-context ((t (:foreground ,white-dim))))
   `(magit-diff-context-highlight ((t (:foreground ,white-dim :background ,bg-hover))))
   `(magit-diff-hunk-heading ((t (:foreground ,white-main :background ,verm-deep))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,white-bright :background ,bg-select))))

   ;; ═══════════════════════════════════════════
   ;; Org-mode
   ;; ═══════════════════════════════════════════
   `(org-level-1 ((t (:foreground ,verm-bright :bold t :height 1.2))))
   `(org-level-2 ((t (:foreground ,lilac-bright :bold t :height 1.1))))
   `(org-level-3 ((t (:foreground ,white-bright :bold t))))
   `(org-level-4 ((t (:foreground ,verm-warm :bold t))))
   `(org-level-5 ((t (:foreground ,lilac-main))))
   `(org-level-6 ((t (:foreground ,white-warm))))
   `(org-level-7 ((t (:foreground ,verm-soft))))
   `(org-level-8 ((t (:foreground ,lilac-dim))))
   `(org-date ((t (:foreground ,lilac-main :underline t))))
   `(org-todo ((t (:foreground ,verm-bright :bold t))))
   `(org-done ((t (:foreground ,lilac-dim :bold t :strike-through t))))
   `(org-headline-done ((t (:foreground ,white-dim :strike-through t))))
   `(org-code ((t (:foreground ,amber-main :background ,bg-deep))))
   `(org-verbatim ((t (:foreground ,lilac-main :background ,bg-deep))))
   `(org-block ((t (:background ,bg-deep))))
   `(org-block-begin-line ((t (:foreground ,verm-dim :background ,bg-deep :italic t))))
   `(org-block-end-line ((t (:foreground ,verm-dim :background ,bg-deep :italic t))))
   `(org-table ((t (:foreground ,lilac-soft))))
   `(org-agenda-date ((t (:foreground ,lilac-main :bold t))))
   `(org-agenda-date-today ((t (:foreground ,verm-bright :bold t :underline t))))
   `(org-agenda-date-weekend ((t (:foreground ,verm-soft))))
   `(org-scheduled ((t (:foreground ,white-main))))
   `(org-scheduled-today ((t (:foreground ,white-bright))))
   `(org-upcoming-deadline ((t (:foreground ,amber-bright))))

   ;; ═══════════════════════════════════════════
   ;; Flycheck / Flymake
   ;; ═══════════════════════════════════════════
   `(flycheck-error ((t (:underline (:style wave :color ,verm-bright)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,amber-bright)))))
   `(flycheck-info ((t (:underline (:style wave :color ,lilac-main)))))
   `(flymake-error ((t (:underline (:style wave :color ,verm-bright)))))
   `(flymake-warning ((t (:underline (:style wave :color ,amber-bright)))))
   `(flymake-note ((t (:underline (:style wave :color ,lilac-main)))))

   ;; ═══════════════════════════════════════════
   ;; Isearch / lazy highlight
   ;; ═══════════════════════════════════════════
   `(isearch ((t (:foreground ,bg-main :background ,verm-bright :bold t))))
   `(isearch-fail ((t (:foreground ,white-main :background ,verm-deep))))
   `(lazy-highlight ((t (:foreground ,white-bright :background ,lilac-deep))))

   ;; ═══════════════════════════════════════════
   ;; Paren matching
   ;; ═══════════════════════════════════════════
   `(show-paren-match ((t (:foreground ,verm-bright :background ,bg-select :bold t))))
   `(show-paren-mismatch ((t (:foreground ,bg-main :background ,verm-bright :bold t))))

   ;; ═══════════════════════════════════════════
   ;; vterm + term + ansi — black/vermillion/lilac palette
   ;; ═══════════════════════════════════════════
   `(vterm-color-black   ((t (:foreground ,white-faint :background ,white-faint))))
   `(vterm-color-red     ((t (:foreground ,verm-bright :background ,verm-bright))))
   `(vterm-color-green   ((t (:foreground ,lilac-main :background ,lilac-main))))
   `(vterm-color-yellow  ((t (:foreground ,amber-main :background ,amber-main))))
   `(vterm-color-blue    ((t (:foreground ,lilac-soft :background ,lilac-soft))))
   `(vterm-color-magenta ((t (:foreground ,verm-warm :background ,verm-warm))))
   `(vterm-color-cyan    ((t (:foreground ,lilac-bright :background ,lilac-bright))))
   `(vterm-color-white   ((t (:foreground ,white-main :background ,white-main))))

   `(term-color-black   ((t (:foreground ,white-faint :background ,white-faint))))
   `(term-color-red     ((t (:foreground ,verm-bright :background ,verm-bright))))
   `(term-color-green   ((t (:foreground ,lilac-main :background ,lilac-main))))
   `(term-color-yellow  ((t (:foreground ,amber-main :background ,amber-main))))
   `(term-color-blue    ((t (:foreground ,lilac-soft :background ,lilac-soft))))
   `(term-color-magenta ((t (:foreground ,verm-warm :background ,verm-warm))))
   `(term-color-cyan    ((t (:foreground ,lilac-bright :background ,lilac-bright))))
   `(term-color-white   ((t (:foreground ,white-main :background ,white-main))))

   `(ansi-color-black          ((t (:foreground ,white-faint :background ,white-faint))))
   `(ansi-color-red            ((t (:foreground ,verm-bright :background ,verm-bright))))
   `(ansi-color-green          ((t (:foreground ,lilac-main :background ,lilac-main))))
   `(ansi-color-yellow         ((t (:foreground ,amber-main :background ,amber-main))))
   `(ansi-color-blue           ((t (:foreground ,lilac-soft :background ,lilac-soft))))
   `(ansi-color-magenta        ((t (:foreground ,verm-warm :background ,verm-warm))))
   `(ansi-color-cyan           ((t (:foreground ,lilac-bright :background ,lilac-bright))))
   `(ansi-color-white          ((t (:foreground ,white-main :background ,white-main))))
   `(ansi-color-bright-black   ((t (:foreground ,white-dim :background ,white-dim))))
   `(ansi-color-bright-red     ((t (:foreground ,verm-bright :background ,verm-bright))))
   `(ansi-color-bright-green   ((t (:foreground ,lilac-bright :background ,lilac-bright))))
   `(ansi-color-bright-yellow  ((t (:foreground ,amber-bright :background ,amber-bright))))
   `(ansi-color-bright-blue    ((t (:foreground ,lilac-main :background ,lilac-main))))
   `(ansi-color-bright-magenta ((t (:foreground ,verm-warm :background ,verm-warm))))
   `(ansi-color-bright-cyan    ((t (:foreground ,lilac-bright :background ,lilac-bright))))
   `(ansi-color-bright-white   ((t (:foreground ,white-bright :background ,white-bright))))

   ;; ═══════════════════════════════════════════
   ;; Posframe
   ;; ═══════════════════════════════════════════
   `(child-frame-border ((t (:background ,verm-glow))))

   ;; ═══════════════════════════════════════════
   ;; Eglot / LSP
   ;; ═══════════════════════════════════════════
   `(eglot-highlight-symbol-face ((t (:background ,bg-select :bold t))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,white-dim :strike-through t))))

   ;; ═══════════════════════════════════════════
   ;; Compilation
   ;; ═══════════════════════════════════════════
   `(compilation-error ((t (:foreground ,verm-bright))))
   `(compilation-warning ((t (:foreground ,amber-bright))))
   `(compilation-info ((t (:foreground ,lilac-main))))
   `(compilation-line-number ((t (:foreground ,lilac-soft))))
   `(compilation-column-number ((t (:foreground ,lilac-dim))))

   ;; ═══════════════════════════════════════════
   ;; Dired
   ;; ═══════════════════════════════════════════
   `(dired-directory ((t (:foreground ,lilac-main :bold t))))
   `(dired-symlink ((t (:foreground ,lilac-soft :italic t))))
   `(dired-flagged ((t (:foreground ,verm-bright :bold t))))
   `(dired-marked ((t (:foreground ,amber-bright :bold t))))
   `(dired-ignored ((t (:foreground ,white-faint))))

   ;; ═══════════════════════════════════════════
   ;; Diff
   ;; ═══════════════════════════════════════════
   `(diff-added ((t (:foreground ,lilac-main :background "#1A0A1A"))))
   `(diff-removed ((t (:foreground ,verm-soft :background "#1A0A0A"))))
   `(diff-header ((t (:foreground ,amber-main :background ,bg-deep))))
   `(diff-file-header ((t (:foreground ,white-bright :background ,bg-deep :bold t))))
   `(diff-hunk-header ((t (:foreground ,lilac-soft :background ,verm-deep))))
   ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'hacktheme)

;;; hacktheme-theme.el ends here
