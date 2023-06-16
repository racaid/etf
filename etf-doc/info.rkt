#lang info

(define version "0.0.1")
(define collection "etf")
(define pkg-desc "documentation for \"etf\"")
(define deps '("base"))
(define build-deps '("scribble-lib"
                     "racket-doc"
                     "etf-lib"))
(define scribblings '(("scribblings/etf.scrbl" (multi-page) (language))))
(define clean '("compiled" "scribblings/compiled" "doc" "doc/etf"))
