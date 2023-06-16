#lang racket/base

(provide tests)

(require rackunit
         rackunit/text-ui
         (prefix-in tag: etf/tag))

(define tests
  (test-suite
   "tag tests"
   (test-case
    "value checks"
    (check-equal? tag:version 131)
    (check-equal? tag:atom-ext 100)
    (check-equal? tag:list-ext 108))))

(module+ main
  (void (run-tests tests)))
