(module prim '#%kernel
  (#%require '#%linklet)
  (define-values (get-primitive)
    (lambda (sym)
      (define-values (s) (if (eq? sym 'f) 'g 'f))
      (define-values (l) (compile-linklet
                          (list 'linklet '() '() sym)))
      (define-values (li) (instantiate-linklet l null (make-instance 'tmp)))
      li))
  (#%provide get-primitive))
