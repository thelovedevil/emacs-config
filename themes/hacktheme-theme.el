;;; hacktheme-theme.el --- .hack//SIGN × Shikigami 式神
;;; Version: 1.0
;;; Commentary:
;;; The World aesthetic: deep oxblood-purple, teal system glow,
;;; amber warnings, lavender secondary. No green.
;;; Code:

(deftheme hacktheme "The World — .hack × 式神")

(let (;; Backgrounds (deep oxblood → purple-black gradient)
      (bg-deep    "#250000")    ; deepest — frame edges
      (bg-main    "#2D0000")    ; main editing background (original laintheme burgundy)
      (bg-alt     "#350008")    ; sidebar, inactive areas
      (bg-hover   "#3A0000")    ; hl-line, hover
      (bg-select  "#5A0000")    ; region / selection
      (bg-panel   "#1A0000")    ; modeline, tab-bar

      ;; Red spectrum (carried from laintheme — your identity)
      (red-bright "#FF4040")    ; alerts, critical findings
      (red-main   "#CC8080")    ; keywords, primary syntax
      (red-warm   "#E8A0A0")    ; functions, headings
      (red-soft   "#B06060")    ; strings
      (red-dim    "#7A3535")    ; comments
      (red-glow   "#6A2020")    ; accent lines, borders
      (red-deep   "#4A0015")    ; subtle separators

      ;; Teal/Cyan (.hack system-active glow)
      (teal-bright "#00CED1")   ; active system indicators
      (teal-main   "#40B0B0")   ; types, builtins
      (teal-soft   "#2A8A8A")   ; secondary active
      (teal-dim    "#1A5555")   ; subtle teal hints

      ;; Amber/Gold (.hack warnings, important data)
      (amber-bright "#FFB347")  ; warnings
      (amber-main   "#D4A017")  ; constants, numbers
      (amber-soft   "#B08A30")  ; secondary amber

      ;; Lavender (.hack secondary UI text)
      (lavender     "#B0A0C8")  ; variable names, secondary text
      (lavender-dim "#7A6A90")  ; faded, inactive tabs

      ;; Text hierarchy
      (fg-main    "#D4C5AA")    ; primary text (warm cream from lain)
      (fg-bright  "#E8D8C8")    ; emphasized text
      (fg-dim     "#8A7A6A")    ; faded text
      (fg-faint   "#5A4A3A"))   ; very faded

  (custom-theme-set-faces
   'hacktheme

   ;; ═══════════════════════════════════════════
   ;; Core
   ;; ═══════════════════════════════════════════
   `(default ((t (:foreground ,fg-main :background ,bg-main))))
   `(cursor ((t (:background ,teal-bright))))
   `(fringe ((t (:background ,bg-deep))))
   `(region ((t (:background ,bg-select))))
   `(secondary-selection ((t (:background ,red-deep))))
   `(hl-line ((t (:background ,bg-hover))))
   `(line-number ((t (:foreground ,red-dim :background ,bg-deep))))
   `(line-number-current-line ((t (:foreground ,teal-bright :background ,bg-hover))))
   `(vertical-border ((t (:foreground ,red-deep))))
   `(shadow ((t (:foreground ,fg-dim))))
   `(link ((t (:foreground ,teal-main :underline t))))
   `(link-visited ((t (:foreground ,lavender :underline t))))
   `(highlight ((t (:background ,bg-hover))))
   `(error ((t (:foreground ,red-bright :bold t))))
   `(warning ((t (:foreground ,amber-bright :bold t))))
   `(success ((t (:foreground ,teal-bright :bold t))))
   `(trailing-whitespace ((t (:background ,red-deep))))
   `(escape-glyph ((t (:foreground ,amber-main))))

   ;; ═══════════════════════════════════════════
   ;; Syntax — red core + teal/amber/lavender accents
   ;; ═══════════════════════════════════════════
   `(font-lock-keyword-face ((t (:foreground ,red-main))))
   `(font-lock-function-name-face ((t (:foreground ,red-warm))))
   `(font-lock-builtin-face ((t (:foreground ,teal-main))))
   `(font-lock-type-face ((t (:foreground ,teal-soft))))
   `(font-lock-constant-face ((t (:foreground ,amber-main))))
   `(font-lock-variable-name-face ((t (:foreground ,lavender))))
   `(font-lock-string-face ((t (:foreground ,red-soft))))
   `(font-lock-comment-face ((t (:foreground ,red-dim :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,red-dim :italic t))))
   `(font-lock-doc-face ((t (:foreground ,lavender-dim :italic t))))
   `(font-lock-warning-face ((t (:foreground ,red-bright :bold t))))
   `(font-lock-negation-char-face ((t (:foreground ,amber-bright))))
   `(font-lock-preprocessor-face ((t (:foreground ,amber-soft))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,amber-main))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,amber-bright))))

   ;; ═══════════════════════════════════════════
   ;; Minibuffer / completions
   ;; ═══════════════════════════════════════════
   `(minibuffer-prompt ((t (:foreground ,teal-bright :bold t))))
   `(completions-common-part ((t (:foreground ,teal-main))))
   `(completions-first-difference ((t (:foreground ,amber-bright :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Modeline — flat, .hack panel aesthetic
   ;; ═══════════════════════════════════════════
   `(mode-line ((t (:foreground ,fg-bright :background ,bg-panel
                    :box (:line-width 4 :color ,bg-panel)
                    :overline ,teal-dim))))
   `(mode-line-inactive ((t (:foreground ,fg-dim :background ,bg-deep
                             :box (:line-width 4 :color ,bg-deep)
                             :overline ,red-deep))))
   `(mode-line-buffer-id ((t (:foreground ,teal-bright :bold t))))
   `(mode-line-emphasis ((t (:foreground ,amber-main :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Header line (per-window top bar)
   ;; ═══════════════════════════════════════════
   `(header-line ((t (:foreground ,lavender :background ,bg-deep
                      :box (:line-width 3 :color ,bg-deep)
                      :underline ,teal-dim))))

   ;; ═══════════════════════════════════════════
   ;; Tab bar — workspace tabs like The World gates
   ;; ═══════════════════════════════════════════
   `(tab-bar ((t (:foreground ,fg-dim :background ,bg-deep))))
   `(tab-bar-tab ((t (:foreground ,teal-bright :background ,bg-panel
                      :box (:line-width 4 :color ,bg-panel)
                      :overline ,teal-main :bold t))))
   `(tab-bar-tab-inactive ((t (:foreground ,lavender-dim :background ,bg-deep
                               :box (:line-width 4 :color ,bg-deep)))))

   ;; ═══════════════════════════════════════════
   ;; Vertico / Marginalia
   ;; ═══════════════════════════════════════════
   `(vertico-current ((t (:background ,bg-select :foreground ,fg-bright))))
   `(marginalia-documentation ((t (:foreground ,lavender-dim :italic t))))
   `(marginalia-key ((t (:foreground ,teal-main))))
   `(marginalia-value ((t (:foreground ,amber-soft))))

   ;; ═══════════════════════════════════════════
   ;; Which-key
   ;; ═══════════════════════════════════════════
   `(which-key-key-face ((t (:foreground ,teal-bright :bold t))))
   `(which-key-separator-face ((t (:foreground ,red-dim))))
   `(which-key-command-description-face ((t (:foreground ,fg-main))))
   `(which-key-group-description-face ((t (:foreground ,amber-main))))

   ;; ═══════════════════════════════════════════
   ;; Treemacs sidebar
   ;; ═══════════════════════════════════════════
   `(treemacs-root-face ((t (:foreground ,teal-bright :bold t :height 1.1))))
   `(treemacs-directory-face ((t (:foreground ,lavender))))
   `(treemacs-file-face ((t (:foreground ,fg-main))))
   `(treemacs-git-modified-face ((t (:foreground ,amber-main))))
   `(treemacs-git-added-face ((t (:foreground ,teal-main))))
   `(treemacs-git-untracked-face ((t (:foreground ,red-soft))))
   `(treemacs-git-ignored-face ((t (:foreground ,fg-faint))))
   `(treemacs-fringe-indicator-face ((t (:foreground ,teal-bright))))

   ;; ═══════════════════════════════════════════
   ;; Dashboard
   ;; ═══════════════════════════════════════════
   `(dashboard-banner-logo-title ((t (:foreground ,teal-bright :bold t :height 1.2))))
   `(dashboard-heading ((t (:foreground ,red-warm :bold t))))
   `(dashboard-items-face ((t (:foreground ,fg-main))))
   `(dashboard-no-items-face ((t (:foreground ,fg-dim))))
   `(dashboard-footer ((t (:foreground ,lavender-dim :italic t))))
   `(dashboard-navigator ((t (:foreground ,teal-main))))

   ;; ═══════════════════════════════════════════
   ;; Doom modeline
   ;; ═══════════════════════════════════════════
   `(doom-modeline-bar ((t (:background ,teal-main))))
   `(doom-modeline-bar-inactive ((t (:background ,red-deep))))
   `(doom-modeline-buffer-file ((t (:foreground ,fg-bright :bold t))))
   `(doom-modeline-buffer-modified ((t (:foreground ,amber-bright :bold t))))
   `(doom-modeline-buffer-major-mode ((t (:foreground ,teal-main :bold t))))
   `(doom-modeline-project-dir ((t (:foreground ,lavender))))
   `(doom-modeline-info ((t (:foreground ,teal-bright))))
   `(doom-modeline-warning ((t (:foreground ,amber-bright))))
   `(doom-modeline-urgent ((t (:foreground ,red-bright))))
   `(doom-modeline-evil-normal-state ((t (:foreground ,teal-bright :bold t))))
   `(doom-modeline-evil-insert-state ((t (:foreground ,amber-bright :bold t))))
   `(doom-modeline-evil-visual-state ((t (:foreground ,lavender :bold t))))

   ;; ═══════════════════════════════════════════
   ;; Magit
   ;; ═══════════════════════════════════════════
   `(magit-section-heading ((t (:foreground ,amber-main :bold t))))
   `(magit-section-highlight ((t (:background ,bg-hover))))
   `(magit-branch-local ((t (:foreground ,teal-main))))
   `(magit-branch-remote ((t (:foreground ,lavender))))
   `(magit-diff-added ((t (:foreground ,teal-main :background "#1A2020"))))
   `(magit-diff-added-highlight ((t (:foreground ,teal-bright :background "#1A2A2A"))))
   `(magit-diff-removed ((t (:foreground ,red-soft :background "#3A0000"))))
   `(magit-diff-removed-highlight ((t (:foreground ,red-bright :background "#450000"))))
   `(magit-diff-context ((t (:foreground ,fg-dim))))
   `(magit-diff-context-highlight ((t (:foreground ,fg-dim :background ,bg-hover))))
   `(magit-diff-hunk-heading ((t (:foreground ,fg-main :background ,red-deep))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,fg-bright :background ,bg-select))))

   ;; ═══════════════════════════════════════════
   ;; Org-mode
   ;; ═══════════════════════════════════════════
   `(org-level-1 ((t (:foreground ,red-warm :bold t :height 1.2))))
   `(org-level-2 ((t (:foreground ,teal-main :bold t :height 1.1))))
   `(org-level-3 ((t (:foreground ,amber-main :bold t))))
   `(org-level-4 ((t (:foreground ,lavender :bold t))))
   `(org-level-5 ((t (:foreground ,red-main))))
   `(org-level-6 ((t (:foreground ,teal-soft))))
   `(org-level-7 ((t (:foreground ,amber-soft))))
   `(org-level-8 ((t (:foreground ,lavender-dim))))
   `(org-date ((t (:foreground ,teal-main :underline t))))
   `(org-todo ((t (:foreground ,red-bright :bold t))))
   `(org-done ((t (:foreground ,teal-dim :bold t :strike-through t))))
   `(org-headline-done ((t (:foreground ,fg-dim :strike-through t))))
   `(org-code ((t (:foreground ,amber-main :background ,bg-deep))))
   `(org-verbatim ((t (:foreground ,teal-main :background ,bg-deep))))
   `(org-block ((t (:background ,bg-deep))))
   `(org-block-begin-line ((t (:foreground ,red-dim :background ,bg-deep :italic t))))
   `(org-block-end-line ((t (:foreground ,red-dim :background ,bg-deep :italic t))))
   `(org-table ((t (:foreground ,lavender))))
   `(org-agenda-date ((t (:foreground ,teal-main :bold t))))
   `(org-agenda-date-today ((t (:foreground ,teal-bright :bold t :underline t))))
   `(org-agenda-date-weekend ((t (:foreground ,red-soft))))
   `(org-scheduled ((t (:foreground ,fg-main))))
   `(org-scheduled-today ((t (:foreground ,fg-bright))))
   `(org-upcoming-deadline ((t (:foreground ,amber-bright))))

   ;; ═══════════════════════════════════════════
   ;; Flycheck / Flymake (error indicators)
   ;; ═══════════════════════════════════════════
   `(flycheck-error ((t (:underline (:style wave :color ,red-bright)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,amber-bright)))))
   `(flycheck-info ((t (:underline (:style wave :color ,teal-main)))))
   `(flymake-error ((t (:underline (:style wave :color ,red-bright)))))
   `(flymake-warning ((t (:underline (:style wave :color ,amber-bright)))))
   `(flymake-note ((t (:underline (:style wave :color ,teal-main)))))

   ;; ═══════════════════════════════════════════
   ;; Isearch / lazy highlight
   ;; ═══════════════════════════════════════════
   `(isearch ((t (:foreground ,bg-main :background ,teal-bright :bold t))))
   `(isearch-fail ((t (:foreground ,fg-main :background ,red-deep))))
   `(lazy-highlight ((t (:foreground ,fg-bright :background ,teal-dim))))

   ;; ═══════════════════════════════════════════
   ;; Paren matching
   ;; ═══════════════════════════════════════════
   `(show-paren-match ((t (:foreground ,teal-bright :background ,bg-select :bold t))))
   `(show-paren-mismatch ((t (:foreground ,bg-main :background ,red-bright :bold t))))

   ;; ═══════════════════════════════════════════
   ;; vterm — .hack terminal palette (no green)
   ;; ═══════════════════════════════════════════
   `(vterm-color-black   ((t (:foreground ,fg-faint :background ,fg-faint))))
   `(vterm-color-red     ((t (:foreground ,red-main :background ,red-main))))
   `(vterm-color-green   ((t (:foreground ,teal-main :background ,teal-main))))
   `(vterm-color-yellow  ((t (:foreground ,amber-main :background ,amber-main))))
   `(vterm-color-blue    ((t (:foreground ,lavender :background ,lavender))))
   `(vterm-color-magenta ((t (:foreground ,red-warm :background ,red-warm))))
   `(vterm-color-cyan    ((t (:foreground ,teal-bright :background ,teal-bright))))
   `(vterm-color-white   ((t (:foreground ,fg-main :background ,fg-main))))

   ;; term / ansi-term
   `(term-color-black   ((t (:foreground ,fg-faint :background ,fg-faint))))
   `(term-color-red     ((t (:foreground ,red-main :background ,red-main))))
   `(term-color-green   ((t (:foreground ,teal-main :background ,teal-main))))
   `(term-color-yellow  ((t (:foreground ,amber-main :background ,amber-main))))
   `(term-color-blue    ((t (:foreground ,lavender :background ,lavender))))
   `(term-color-magenta ((t (:foreground ,red-warm :background ,red-warm))))
   `(term-color-cyan    ((t (:foreground ,teal-bright :background ,teal-bright))))
   `(term-color-white   ((t (:foreground ,fg-main :background ,fg-main))))

   ;; ansi-color (comint, compilation)
   `(ansi-color-black          ((t (:foreground ,fg-faint :background ,fg-faint))))
   `(ansi-color-red            ((t (:foreground ,red-main :background ,red-main))))
   `(ansi-color-green          ((t (:foreground ,teal-main :background ,teal-main))))
   `(ansi-color-yellow         ((t (:foreground ,amber-main :background ,amber-main))))
   `(ansi-color-blue           ((t (:foreground ,lavender :background ,lavender))))
   `(ansi-color-magenta        ((t (:foreground ,red-warm :background ,red-warm))))
   `(ansi-color-cyan           ((t (:foreground ,teal-bright :background ,teal-bright))))
   `(ansi-color-white          ((t (:foreground ,fg-main :background ,fg-main))))
   `(ansi-color-bright-black   ((t (:foreground ,fg-dim :background ,fg-dim))))
   `(ansi-color-bright-red     ((t (:foreground ,red-bright :background ,red-bright))))
   `(ansi-color-bright-green   ((t (:foreground ,teal-bright :background ,teal-bright))))
   `(ansi-color-bright-yellow  ((t (:foreground ,amber-bright :background ,amber-bright))))
   `(ansi-color-bright-blue    ((t (:foreground ,lavender :background ,lavender))))
   `(ansi-color-bright-magenta ((t (:foreground ,red-warm :background ,red-warm))))
   `(ansi-color-bright-cyan    ((t (:foreground ,teal-bright :background ,teal-bright))))
   `(ansi-color-bright-white   ((t (:foreground ,fg-bright :background ,fg-bright))))

   ;; ═══════════════════════════════════════════
   ;; Posframe (floating child frames)
   ;; ═══════════════════════════════════════════
   `(child-frame-border ((t (:background ,teal-dim))))

   ;; ═══════════════════════════════════════════
   ;; Eglot / LSP
   ;; ═══════════════════════════════════════════
   `(eglot-highlight-symbol-face ((t (:background ,bg-select :bold t))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,fg-dim :strike-through t))))

   ;; ═══════════════════════════════════════════
   ;; Compilation
   ;; ═══════════════════════════════════════════
   `(compilation-error ((t (:foreground ,red-bright))))
   `(compilation-warning ((t (:foreground ,amber-bright))))
   `(compilation-info ((t (:foreground ,teal-main))))
   `(compilation-line-number ((t (:foreground ,lavender))))
   `(compilation-column-number ((t (:foreground ,lavender-dim))))

   ;; ═══════════════════════════════════════════
   ;; Dired
   ;; ═══════════════════════════════════════════
   `(dired-directory ((t (:foreground ,teal-main :bold t))))
   `(dired-symlink ((t (:foreground ,lavender :italic t))))
   `(dired-flagged ((t (:foreground ,red-bright :bold t))))
   `(dired-marked ((t (:foreground ,amber-bright :bold t))))
   `(dired-ignored ((t (:foreground ,fg-faint))))

   ;; ═══════════════════════════════════════════
   ;; Diff
   ;; ═══════════════════════════════════════════
   `(diff-added ((t (:foreground ,teal-main :background "#1A2020"))))
   `(diff-removed ((t (:foreground ,red-soft :background "#3A0000"))))
   `(diff-header ((t (:foreground ,amber-main :background ,bg-deep))))
   `(diff-file-header ((t (:foreground ,fg-bright :background ,bg-deep :bold t))))
   `(diff-hunk-header ((t (:foreground ,lavender :background ,red-deep))))
   ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'hacktheme)

;;; hacktheme-theme.el ends here
