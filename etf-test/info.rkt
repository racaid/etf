#lang info

(define version "0.0.1")
(define collection "etf")
(define pkg-desc "tests for \"etf\"")
(define deps '("base"))
(define build-deps '("rackunit-lib"
                     "etf-lib"))
(define update-implies '("etf-lib"))
(define clean '("compiled" "tests/compiled"))
