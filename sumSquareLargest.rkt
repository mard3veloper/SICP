#lang sicp
(define (>= x y) (or (> x y) (= x y)))
(define (sumSquare x y) (+ (* x x) (* y y)))
(define (squareSumLarger x y z)
  (and (>= y x) (>= z x)
       (sumSquare y z))
  (and (>= x y) (>= x y)
       (sumSquare x z))
  (and (>= x z) (>= y z)
       (sumSquare x y)))

(squareSumLarger 10 20 4)