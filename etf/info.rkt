#lang setup/infotab
(define name "etf")
(define blurb
  (list
   `(p "Racket support for Erlang's External Term Format, allowing Racket programs to communicate directly with Erlang nodes. ")))
(define categories '(net))
(define can-be-loaded-with 'all)
(define homepage "https://github.com/racaid/etf")
(define primary-file "main.rkt")
(define repositories '("4.x"))
(define scribblings '(("scribblings/etf.scrbl" ())))
