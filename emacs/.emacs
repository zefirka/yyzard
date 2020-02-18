(setq backup-directory-alist `(("." . "~/.saves")))

(setq mac-option-modifier 'meta)

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(defadvice split-window (after move-point-to-new-window activate)
  "Moves the point to the newly created window after splitting."
   (other-window 1))

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(global-set-key (kbd "C-x C-g l") 'goto-line)

(require 'package)
 (add-to-list 'package-archives
              '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(when (< emacs-major-version 24)
   ;; For important compatibility libraries like cl-lib
   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(global-set-key "\C-cd" 'kill-whole-line)
(add-to-list 'load-path "/")

;(require 'neotree)
; (global-set-key [f8] 'neotree-toggle)

;(global-git-gutter-mode +1)
;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

(setq web-mode-extra-snippets '(("erb" . (("name" . ("beg" . "end"))))))
(setq web-mode-extra-auto-pairs '(("erb" . (("open" "close")))))

(setq web-mode-enable-current-element-highlight t)
