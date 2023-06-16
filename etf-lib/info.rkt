#lang info

(define collection "etf")
(define version "0.0.1")
(define pkg-desc
  (list
   `(p "Racket support for Erlang's External Term Format, allowing Racket programs to communicate directly with Erlang nodes. ")))
(define homepage "https://github.com/racaid/etf")
(define license '(Apache-2.0))
(define pkg-authors '(oubiwann))
(define categories '(io net))

(define deps '("base" "typed-racket-lib" "typed-racket-more"))
(define clean '("compiled"))
