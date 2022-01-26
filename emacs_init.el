(set-cursor-color "red")
;;(require "rvm")

(add-to-list 'load-path "~/new_emacs")
(add-to-list 'load-path "~/new_emacs/assorted")
(add-to-list 'load-path	"~/new_emacs/custom")
(add-to-list 'load-path "~/new_emacs/org-mode/lisp")
(add-to-list 'load-path "~/new_emacs/ruby-mode")
(add-to-list 'load-path "~/new_emacs/rhtml")
(add-to-list 'load-path "~/new_emacs/emacs-rails")
(add-to-list 'load-path "~/new_emacs/yasnippet-0.6.1c")
(add-to-list 'load-path "~/new_emacs/scala-mode")
(add-to-list 'load-path "~/new_emacs/markdown-mode/")
(add-to-list 'load-path "~/new_emacs/color-theme/")
(add-to-list 'load-path "~/new_emacs/rvm.el/")
(add-to-list 'load-path "~/new_emacs/cucumber/")
(add-to-list 'load-path "~/new_emacs/rspec-mode/")
(add-to-list 'load-path "~/new_emacs/pcre2el/")
(add-to-list 'load-path "~/new_emacs/ruby-test-mode/")
(add-to-list 'load-path "~/new_emacs/json-mode/")
(add-to-list 'load-path "~/new_emacs/coffee-mode/")
(add-to-list 'load-path "~/new_emacs/sass-mode/")
(add-to-list 'load-path "~/new_emacs/scss-mode/")
(add-to-list 'load-path "~/new_emacs/nodejs-repl.el/")
(add-to-list 'load-path "~/new_emacs/jade-mode/")
(add-to-list 'load-path "~/new_emacs/cedet-1.1/")
(add-to-list 'load-path "~/new_emacs/jsx-mode.el/")
(add-to-list 'load-path "~/new_emacs/rjsx-mode/")
(add-to-list 'load-path "~/new_emacs/js2-mode/")
(add-to-list 'load-path "~/new_emacs/emacs-slim/")
(add-to-list 'load-path "~/new_emacs/bundler.el")
(require 'bundler)

(require 'sws-mode)
(require 'jade-mode)    
(require 'tail)

(autoload 'tail-file "~/new_emacs/tail.el" "Tail a file." t)
(autoload 'tail-command "~/new_emacs/tail.el" "Tail a file with arguments." t)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "~/new_emacs/jsx-mode/src/jsx-mode" "JSX mode" t)
(autoload 'rjsx-mode "~/new_emacs/rjsx-mode/rjsx-mode.el" "RJSX mode" t)
;; (add-to-list 'yas-snippet-dirs "~/new_emacs/angularjs-mode/snippets")
(add-to-list 'load-path "~/new_emacs/shell-pop-el")
(add-to-list 'load-path "~/new_emacs/js2-mode")
(require 'shell-pop)
(require 'js2-mode)
;;(require 'jsx-mode)
(require 'rjsx-mode)

(require 'package)

;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(require 'auto-complete)

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/new_emacs/angularjs-mode/ac-dict")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20170125.245/dict")
(ac-config-default)
(add-to-list 'ac-modes 'angular-mode)
(add-to-list 'ac-modes 'angular-html-mode)
(add-to-list 'ac-modes 'auto-complete-mode)


(load "load_vars.el")
(load "00setup.el")
(load "01org-mode.el")
(load "02ruby-mode.el")
(push "/usr/local/bin" exec-path)

;;(load "03html-mode.el")

(load "04yasnippet.el")
(load "05rhtml-mode.el")


(load "07rails.el")
(load "08ido-mode.el")
(load "09bm.el")
;;(load "10cedet.el")
(load "11ecb.el")
(load "12auto-install.el")
(load "13enable-yas-mode.el")
(load "14scala-mode.el")
(load "15markdown.el")
(load "16color-theme.el")
(load "19haml-mode.el")
(load "20rvm.el")
(load "21coffee.el")
;;(load "22sass.el")
(load "23mustache.el")
(load "24scss.el")
;;(load "25json.el")
(load "rtf-mode.el")
(load "quickrun.el")

(require 'quickrun)
(require 'ack)
(require 'feature-mode)
(require 'rspec-mode)
(require 'json-mode)
(require 'nodejs-repl)
(setq rspec-use-rvm t)
(setq rspec-use-rake-flag nil)
(setq rspec-spec-command "bundle exec rspec")
(setq shell-file-name "zsh")

(setq projectile-rails-add-keywords nil)

(require 'hide-comnt)

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-to-list 'ac-dictionary-directories "~/new_emacs/angularjs-mode/ac-dict")
(add-to-list 'ac-modes 'angular-mode)
(add-to-list 'ac-modes 'angular-html-mode)

;;(autoload 'js2-mode "js2" nil t)

(setq ispell-program-name "/usr/local/bin/aspell")
;;(setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem
(autoload 'flyspell-mode "flyspell-1.7p" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t) 
(autoload 'tex-mode-flyspell-verify "flyspell" "" t) 
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;(load "17rsense.el")

;;(rvm-use-default)
;;(rvm-use "ruby-2.5.1" "global")
(rvm-use "ruby-2.6.6" "global")
(toggle-debug-on-error)
(setq debug-on-error nil)

(server-start)

(tool-bar-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-candidate-limit 5)
 '(ac-menu-height 5)
 '(ac-sources
   (quote
    (ac-source-yasnippet ac-source-imenu ac-source-abbrev ac-source-words-in-buffer ac-source-files-in-current-dir ac-source-filename)) t)
 '(display-time-mode t)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-show-sources-in-directories-buffer
   (quote
    ("left7" "left13" "left14" "left15" "fav2" "code4" "code")))
 '(ecb-source-path
   (quote
    ("/Users/hemant/checkout/solaro" "/Users/hemant/rails_yard/actively")))
 '(ecb-tip-of-the-day nil)
 '(fill-column 100)
 '(js2-bounce-indent-p t)
 '(package-selected-packages (quote (auto-complete)))
 '(rng-nxml-auto-validate-flag nil)
 '(shell-pop-default-directory "/Users/neerajkumar/git")
 '(shell-pop-full-span t)
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/bin/zsh")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-position "right")
 '(shell-pop-window-size 45)
 '(show-paren-mode t)
 '(transient-mark-mode t))

;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(ac-completion-face ((t (:background "SandyBrown" :foreground "black"))))
;;  '(ac-selection-face ((t (:background "salmon" :foreground "black")))))
(put 'upcase-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco")))))

(set-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
; (set-default default-buffer-file-coding-system 'utf-8-unix)

(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "{" nil)
            (define-key ruby-mode-map "}" nil)))

(require 'ruby-test-mode)
(setq package-list '(better-defaults
                     solarized-theme
                     helm-projectile
                     helm-ag
                     ruby-electric
                     seeing-is-believing
                     chruby
                     inf-ruby
                     ruby-test-mode))
;;...
(add-hook 'ruby-mode-hook 'ruby-test-mode)
(add-hook 'compilation-finish-functions
          (lambda (buf strg)
            (switch-to-buffer-other-window "*compilation*")
            (read-only-mode)
            (goto-char (point-max))
            (local-set-key (kbd "q")
                           (lambda () (interactive) (quit-restore-window)))))
(setq enh-ruby-deep-indent-paren nil)
