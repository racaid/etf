#lang racket/base

(provide tests)

(require rackunit
         rackunit/text-ui)

(define tests
  (test-suite
   "util tests"
   (test-suite
    "sub-suite 1"
    (check-equal? 1 1))
   (test-suite
    "sub-suite 2"
    (check-equal? 1 1))))

(module+ main
  (void (run-tests tests)))
