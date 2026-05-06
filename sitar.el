(defvar sitar-mode-hook nil)

(defconst sitar-font-lock-keywords
  (let ((main-keywords '("module" "procedure" "parameter" "behavior"))
        (behavioral-keywords '("wait" "until" "if" "then" "else" "do" "while" "nothing" "stop" "simulation" "run" "end"))
        (structural-keywords '("inport" "inport_array" "outport" "outport_array" "buffer" "net" "net_array" "submodule" "submodule_array" "width" "capacity" "for" "in" "to"))
        (other-keywords '("or" "and" "not" "this_phase" "this_cycle" "current_time"))
        (snippet-keywords '("include" "decl" "init")))
    (list
     `(,(concat "\\_<" (regexp-opt (append main-keywords 
                                           behavioral-keywords 
                                           structural-keywords 
                                           other-keywords 
                                           snippet-keywords) t) "\\_>") . font-lock-keyword-face)
     '("\\(<=\\|=>\\|:\\)" . font-lock-keyword-face)
     '("\\(;\\|||\\|\\[\\|\\]\\)" . font-lock-type-face)
     '("\\$\\([^$]*\\)\\$" 0 font-lock-preprocessor-face keep))))

(defvar sitar-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?/ ". 12b" st)
    (modify-syntax-entry ?\n "> b" st)
    (modify-syntax-entry ?\" "\"" st)
    (modify-syntax-entry ?_ "w" st)
    st))

(define-derived-mode sitar-mode prog-mode "Sitar"
  :syntax-table sitar-mode-syntax-table
  (setq font-lock-defaults '(sitar-font-lock-keywords)))

(add-to-list 'auto-mode-alist '("\\.sitar\\'" . sitar-mode))

(provide 'sitar)
