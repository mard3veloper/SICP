#lang sicp
(define (cbrt guess x)
  (if (closeEnough guess x)
      guess
      (cbrt (improve guess x) x)))
(define (closeEnough guess x)
  (< (abs (- (cube guess) x)) .001))
(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))
(define (cube x) (* x x x))
(define (square x) (* x x))

