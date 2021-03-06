#lang racket
(require (for-syntax racket/base pcf/private/make-lang)
         (for-syntax (only-in cpcf/redex typable/contract?))
         cpcf/heap/semantics
         pcf/private/racket-pcf
         pcf/private/label
         pcf/private/return)
(provide #%top-interaction #%module-begin
         (all-from-out pcf/private/label)
         (all-from-out pcf/private/racket-pcf))
(define-syntax #%top-interaction (make-#%top-interaction #'-->cvσ typable/contract? #'injσ #'returnσ))
(define-syntax #%module-begin    (make-#%module-begin    #'-->cvσ typable/contract? #'injσ #'returnσ #'pp #'color))
