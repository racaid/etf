#lang setup/infotab
(define collection "etf")
(define version "0.0.1")
(define blurb
  (list
   `(p "Racket support for Erlang's External Term Format, allowing Racket programs to communicate directly with Erlang nodes. ")))
(define homepage "https://github.com/racaid/etf")
(define license '(Apache-2.0))
(define pkg-authors '(oubiwann))
(define categories '(io net))

(define can-be-loaded-with 'all)
(define deps '("base" "rackunit-lib" "typed-racket-lib" "typed-racket-more"))
(define build-deps '())
(define build-deps '("scribble-lib" "racket-doc"))
(define clean '("compiled" "private/compiled"))
