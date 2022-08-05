#lang sicp
(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
(cond ((> (square test-divisor) n) n)
((divides? test-divisor n) test-divisor)
(else (find-divisor n (nextCheck test-divisor)))))

(define (divides? a b) (= (remainder b a) 0))

(define (square a)
  (* a a))

(define (nextCheck a)
  (if (= a 2) 3
      (+ a 2)))
