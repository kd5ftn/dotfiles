(setf inhibit-startup-screen t) ; disable welcome screen

(menu-bar-mode -1) ; disable menu bar

;; improve scrolling
(setf scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)

(show-paren-mode 1) ; highlight matching parens

(global-hl-line-mode 1) ; highlight current line

(setq-default indent-tabs-mode nil) ; use spaces instead of tabs

(global-linum-mode t)
;; add padding next to line number
(setf linum-format
      (lambda (line)
        (propertize
         (format
          (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
            (concat "%" (number-to-string w) "d "))
          line)
         'face
         'linum)))
