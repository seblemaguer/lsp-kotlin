Kotlin support for lsp-mode using [kotlin-language-server](https://github.com/fwcd/KotlinLanguageServer)

## Installation

Install [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode) first, and either clone this repository, or install from MELPA. Add the following to your `.emacs`:

```emacs-lisp
(require 'lsp-mode)
(require 'lsp-kotlin)
(add-hook kotlin-mode-hook #'lsp-kotlin-enable)
```
