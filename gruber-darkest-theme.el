;;; gruber-darkest-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2024-2025 ptrfs
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: ptrfs 
;; URL: http://github.com/ptrfs/gruber-darkest-theme
;; Version: 0.1.3

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Alexey Kutepov a.k.a. rexim. Made for
;; Low Contrast by ptrfs

(deftheme gruber-darkest
  "Gruber Darkest color theme for Emacs 29")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-darkest-fg        "#e4e4ef")
      (gruber-darkest-fg+1      "#f4f4ff")
      (gruber-darkest-fg+2      "#f5f5f5")
      (gruber-darkest-white     "#ffffff")
      (gruber-darkest-black     "#000000")
      (gruber-darkest-bg-1      "#101010")
      (gruber-darkest-bg        "#181818")
      (gruber-darkest-bg+3      "#484848")
      (gruber-darkest-bg+4      "#52494e")
      (gruber-darkest-red       "#5e2424")
      (gruber-darkest-green     "#4F6960")
      (gruber-darkest-yellow    "#c9bb8e")
      (gruber-darkest-brown     "#8B8589")
      (gruber-darkest-quartz    "#95a99f")
      (gruber-darkest-niagara-2 "#303540")
      (gruber-darkest-niagara-1 "#565f73")
      (gruber-darkest-niagara   "#36454F")
      (gruber-darkest-wisteria  "#242124")
      )
  (custom-theme-set-variables
   'gruber-darkest
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-darkest

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-darkest-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-darkest-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-darkest-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-darkest-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-darkest-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-darkest-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-darkest-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-darkest-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-darkest-green))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-darkest-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-darkest-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-darkest-green))))
   `(font-latex-warning-face ((t (:foreground ,gruber-darkest-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-darkest-bg-1
                       :foreground gruber-darkest-bg-1))))
   `(cursor ((t (:background ,gruber-darkest-fg+1))))
   `(default ((t ,(list :foreground gruber-darkest-fg
                        :background gruber-darkest-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground gruber-darkest-bg-1))))
   `(vertical-border ((t ,(list :foreground gruber-darkest-bg-1))))
   `(link ((t (:foreground ,gruber-darkest-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-darkest-wisteria :underline t))))
   `(match ((t (:background ,gruber-darkest-bg+4))))
   `(shadow ((t (:foreground ,gruber-darkest-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-darkest-niagara))))
   `(region ((t (:background ,gruber-darkest-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background gruber-darkest-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground gruber-darkest-black
                                    :background gruber-darkest-red))))
   `(tooltip ((t ,(list :background gruber-darkest-bg+4
                        :foreground gruber-darkest-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-darkest-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-darkest-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-darkest-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-darkest-red))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-darkest-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-darkest-green
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-darkest-green))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-darkest-red
                             :background nil))))
   `(diff-added ((t ,(list :foreground gruber-darkest-green
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darkest-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-darkest-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-darkest-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-darkest-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-darkest-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-darkest-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-darkest-green))))
   `(egg-diff-del ((t (:foreground ,gruber-darkest-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-darkest-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-darkest-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-darkest-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-darkest-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-darkest-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-darkest-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-darkest-fg))))
   `(egg-term ((t (:foreground ,gruber-darkest-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-darkest-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-darkest-green))))
   `(erc-input-face ((t (:foreground ,gruber-darkest-red))))
   `(erc-my-nick-face ((t (:foreground ,gruber-darkest-red))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-darkest-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-darkest-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-darkest-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-darkest-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-darkest-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-darkest-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-darkest-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-darkest-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-darkest-green))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-darkest-fg :italic t))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-darkest-yellow :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-darkest-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-darkest-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-darkest-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-darkest-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darkest-yellow :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-green)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darkest-green :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-red) :inherit unspecified))
      (t (:foreground ,gruber-darkest-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-yellow) :inherit unspecified))
      (t (:foreground ,gruber-darkest-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-darkest-bg-1
                                      :foreground gruber-darkest-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-darkest-niagara
                                  :background gruber-darkest-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-darkest-green))))
   `(helm-ff-file ((t (:foreground ,gruber-darkest-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-darkest-bg
                                        :background gruber-darkest-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-darkest-yellow :bold t))))
   `(helm-selection-line ((t (:background ,gruber-darkest-bg-1))))
   `(helm-selection ((t (:background ,gruber-darkest-bg-1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-darkest-yellow
                                   :background gruber-darkest-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-darkest-yellow :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-darkest-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-darkest-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-darkest-niagara))))
   `(info-visited ((t (:foreground ,gruber-darkest-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-darkest-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-darkest-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-darkest-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-darkest-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-darkest-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-darkest-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-darkest-yellow :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-darkest-bg-1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-darkest-bg-1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-darkest-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-darkest-yellow))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-darkest-quartz
                      :background gruber-darkest-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-darkest-niagara))))
   `(magit-diff-hunk-header ((t (:background ,gruber-darkest-bg-1))))
   `(magit-diff-file-header ((t (:background ,gruber-darkest-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-darkest-red))))
   `(magit-log-author ((t (:foreground ,gruber-darkest-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-darkest-green
                                            :background gruber-darkest-bg-1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-darkest-niagara
                                           :background gruber-darkest-bg-1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-darkest-yellow
                                          :background gruber-darkest-bg-1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-darkest-fg
                                          :background gruber-darkest-bg-1))))
   `(magit-item-highlight ((t (:background ,gruber-darkest-bg-1))))
   `(magit-tag ((t ,(list :foreground gruber-darkest-yellow
                          :background gruber-darkest-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-darkest-bg-1
                                    :foreground gruber-darkest-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-darkest-green))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-darkest-bg
                          :foreground gruber-darkest-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-darkest-bg
                                    :foreground gruber-darkest-white))))
   `(mode-line-inactive ((t ,(list :background gruber-darkest-bg
                                   :foreground gruber-darkest-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-darkest-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,gruber-darkest-niagara))))
   `(org-column ((t (:background ,gruber-darkest-bg-1))))
   `(org-column-title ((t (:background ,gruber-darkest-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,gruber-darkest-green))))
   `(org-todo ((t (:foreground ,gruber-darkest-red))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-darkest-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-darkest-black
                        :background gruber-darkest-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-darkest-black
                             :background gruber-darkest-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-darkest-fg+1
                                       :background gruber-darkest-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-darkest-red))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-darkest-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-darkest-red))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-darkest-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-darkest-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-darkest-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-darkest-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-darkest-bg-1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-darkest-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-darkest-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-darkest-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-darkest-bg
                                 :foreground gruber-darkest-bg-1))))
   `(whitespace-tab ((t ,(list :background gruber-darkest-bg
                               :foreground gruber-darkest-bg-1))))
   `(whitespace-hspace ((t ,(list :background gruber-darkest-bg
                                  :foreground gruber-darkest-bg-1))))
   `(whitespace-line ((t ,(list :background gruber-darkest-bg-1
                                :foreground gruber-darkest-red))))
   `(whitespace-newline ((t ,(list :background gruber-darkest-bg
                                   :foreground gruber-darkest-bg-1))))
   `(whitespace-trailing ((t ,(list :background gruber-darkest-red
                                    :foreground gruber-darkest-red))))
   `(whitespace-empty ((t ,(list :background gruber-darkest-yellow
                                 :foreground gruber-darkest-yellow))))
   `(whitespace-indentation ((t ,(list :background gruber-darkest-yellow
                                       :foreground gruber-darkest-red))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-darkest-yellow
                                           :foreground gruber-darkest-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-darkest-brown
                                            :foreground gruber-darkest-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-darkest-bg-1 :foreground ,gruber-darkest-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,gruber-darkest-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-darkest-bg+3 :background ,gruber-darkest-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-darkest-red :background ,gruber-darkest-red))))
   `(term-color-green ((t (:foreground ,gruber-darkest-green :background ,gruber-darkest-green))))
   `(term-color-blue ((t (:foreground ,gruber-darkest-niagara :background ,gruber-darkest-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-darkest-yellow :background ,gruber-darkest-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-darkest-wisteria :background ,gruber-darkest-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-darkest-quartz :background ,gruber-darkest-quartz))))
   `(term-color-white ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg :bold t))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg+3 :bold t))))
   `(company-tooltip-selection ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg+3))))
   `(company-tooltip-mouse ((t (:background ,gruber-darkest-bg))))
   `(company-tooltip-common ((t (:foreground ,gruber-darkest-bg+3 :background ,gruber-darkest-bg))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-darkest-niagara :background ,gruber-darkest-bg+3 :bold t))))
   `(company-scrollbar-fg ((t (:background ,gruber-darkest-bg))))
   `(company-scrollbar-bg ((t (:background ,gruber-darkest-bg))))
   `(company-preview ((t (:background ,gruber-darkest-bg+3))))
   `(company-preview-common ((t (:foreground ,gruber-darkest-bg+3 :background ,gruber-darkest-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-darkest-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-darkest-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-darkest-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-darkest-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-darkest-quartz))))

   ;; Tree-sitter
   `(tree-sitter-hl-face:keyword ((t (:foreground ,gruber-darkest-yellow))))
   `(tree-sitter-hl-face:function ((t (:foreground ,gruber-darkest-niagara))))
   `(tree-sitter-hl-face:type ((t (:foreground ,gruber-darkest-quartz))))
   `(tree-sitter-hl-face:variable ((t (:foreground ,gruber-darkest-fg+1))))
   `(tree-sitter-hl-face:string ((t (:foreground ,gruber-darkest-green))))
   `(tree-sitter-hl-face:number ((t (:foreground ,gruber-darkest-red))))

   ;; Corfu
   `(corfu-current ((t (:background ,gruber-darkest-bg+3 :foreground ,gruber-darkest-fg+1))))
   `(corfu-border ((t (:background ,gruber-darkest-bg-1))))
   `(corfu-default ((t (:background ,gruber-darkest-bg :foreground ,gruber-darkest-fg))))
   `(corfu-annotation ((t (:foreground ,gruber-darkest-quartz))))

   ;; LSP
   `(lsp-headerline-breadcrumb-path-face ((t (:foreground ,gruber-darkest-quartz))))
   `(lsp-headerline-breadcrumb-symbols-face ((t (:foreground ,gruber-darkest-green))))

   ;; Magit
   `(magit-section-title ((t (:foreground ,gruber-darkest-yellow))))
   `(magit-diff-added ((t (:foreground ,gruber-darkest-green))))
   `(magit-diff-removed ((t (:foreground ,gruber-darkest-red))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-darkest)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruber-darkest-theme.el ends here.
