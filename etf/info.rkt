#lang info

(define version "0.0.1")
(define collection 'multi)
(define deps '("etf-lib"
               "etf-doc"
               "etf-test"))
(define build-deps '())
(define implies '("etf-lib"
                  "etf-doc"
                  "etf-test"))
(define clean '("compiled" "doc"))
