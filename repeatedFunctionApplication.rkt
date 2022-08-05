#lang sicp
(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeat f n)
  (if (= n 1)
      f
      (repeat (compose f f) (- n 1))))

(define (square x)
  (* x x))