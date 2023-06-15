#lang racket/base

(require rackunit
         rackunit/text-ui
         (prefix-in const: "const.rkt")
         (prefix-in etf: "etf.rkt")
         (prefix-in util: "util.rkt"))

(define tests
  (test-suite
   "etf tests"

   const:tests
   eft:tests
   util:tests))

(module+ test
  (void
   (run-tests tests)))
