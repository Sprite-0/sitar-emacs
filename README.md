# Sitar for Emacs

A lightweight major mode providing syntax highlighting for the Sitar simulation framework (https://github.com/sitar-sim/sitar).
The Sitar framework was originally developed by Dr. Neha Karanjkar.

## Screenshot

<img width="615" height="704" alt="image" src="https://github.com/user-attachments/assets/3c036e0d-022a-4cd3-a5de-594be6fcffe1" />

## Features

This file provides native Emacs syntax highlighting for:
* **Main Keywords:** `module`, `procedure`, `parameter`, `behavior`
* **Behavioral Keywords:** `wait`, `until`, `if`, `then`, `else`, `do`, `while`, `nothing`, `stop`, `simulation`, `run`, `end`
* **Structural Keywords:** `inport`, `outport`, `buffer`, `net`, `submodule`, `width`, `capacity`, etc.
* **Code Snippets:** Highlighting for `include`, `decl`, `init`, and inline code blocks (`$...$`)
* **Comments:** Standard `//` comments

## Prerequisites

Sitar V2.0

## Installation

1. Download the `sitar.el` file from this repository.
2. Place it in your Emacs custom Lisp directory (usually `~/.emacs.d/lisp/`).
3. Add the following lines to your Emacs configuration file (`~/.emacs.d/init.el` or `~/.emacs`):

```elisp
;; Add the custom lisp folder to your load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Load the Sitar syntax highlighter
(require 'sitar)
```
4. Restart Emacs. The highlighter will now automatically trigger whenever you open a .sitar file.

## Author

Kapish Pirankar

