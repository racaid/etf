#lang info

(define version "0.0.1")
(define collection "etf")
(define deps '("base"))
(define build-deps '("scribble-lib"
                     "scribble-abbrevs"
                     "scribble-math"
                     "racket-doc"
                     "sandbox-lib"
                     "metapict"
                     "etf-lib"))
(define scribblings '(("scribblings/etf.scrbl" (multi-page) (language))))
(define clean '("compiled" "doc" "doc/etf"))
