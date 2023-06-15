#lang info

(define version "0.0.1")
(define collection "etf")
(define deps '("base"))
(define build-deps '("rackunit-lib"
                     "adjutor"
                     "math-lib"
                     "etf-lib"))
(define clean '("compiled" "tests/compiled"))
