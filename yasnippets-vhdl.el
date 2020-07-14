;;; yasnippets-vhdl.el --- Yasnippets for Vhdl

;; Copyright (C) 2020 Enze Chi

;; Author: Enze Chi
;; Version: 0.1.0
;; URL: https://github.com/ezchi/yasnippets-vhdl.git
;; Package-Requires: ((yasnippet "0.8.0"))

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defvar yasnippets-vhdl-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun yasnippets-vhdl-initialize ()
  (let ((snip-dir (expand-file-name "snippets" yasnippets-vhdl-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(yasnippets-vhdl-initialize))

(provide 'yasnippets-vhdl)

;;; yasnippets-vhdl.el ends here
