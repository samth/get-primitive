(module prim '#%kernel
  (#%require '#%linklet)
  (define-values (get-primitive)
    (lambda (sym)
      (define-values (s) (if (eq? sym 'f) 'g 'f))
      (define-values (l) (compile-linklet
                          (list 'linklet '() (list s) (list 'define-values (list s) sym))))
      (define-values (li) (instantiate-linklet l null))
      (instance-variable-value li s)))
  (#%provide get-primitive))
