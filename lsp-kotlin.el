;;; lsp-kotlin.el --- Kotlin support for lsp-mode -*- lexical-binding: t -*-

;; Copyright (C) 2018 Sébastien Le Maguer <lemagues@tcd.ie> based on lsp-python by Vibhav Pant <vibhavp@gmail.com>

;; Author: Sébastien Le Maguer <lemagues@tcd.ie>
;; Version: 1.0
;; Package-Requires: ((lsp-mode "3.0"))
;; Keywords: kotlin
;; URL: https://github.com/seblemaguer/lsp-kotlin

;;; Code:
(require 'lsp-mode)
(require 'lsp-common)

(defcustom lsp-kotlin-server-cmd
  "kotlin-language-server"
  :group 'lsp-kotlin
  :risky t
  :type '(string))

(defcustom lsp-kotlin-server-args
  '()
  "Extra arguments for the kotlin-stdio language server"
  :group 'lsp-kotlin
  :risky t
  :type '(repeat string))

(defun lsp-kotlin--ls-command ()
  "Generate the language server startup command."
  `(,@lsp-kotlin-server-cmd ,@lsp-kotlin-server-args))

(lsp-define-stdio-client lsp-kotlin "kotlin" nil nil
                         :command-fn 'lsp-kotlin--ls-command)

(provide 'lsp-kotlin)
;;; lsp-kotlin.el ends here
