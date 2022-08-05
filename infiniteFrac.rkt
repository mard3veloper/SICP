#lang sicp
(define (cont-frac n d iterNum)
  (recur n d iterNum 1))
(define (recur n d iterNum startVal)
  (if (= iterNum startVal)
      (/ (n startVal) (d startVal))
      (/ (n startVal) (+ (d startVal) (recur n d iterNum (+ startVal 1))))))

(define (cont-fraciter n d iterNum)
  (iterate n d iterNum 1))
(define (iterate n d iterNum startVal)
  (if (= iterNum startVal)
      (/ (n startVal) (d startVal))
      (/ (n startVal) (+ (d startVal) (iterate n d iterNum (+ startVal 1))))))

(define (three-clean val)
  (let ((rem (remainder val 3)))
    (/ (- val rem) 3)))

(define (denom val)
  (if (and (= (remainder val 3) 2))
      (+ 2 (* 2 (three-clean val)))
      1))
