#lang sicp
(define (expt num n)
  (if (= n 0)
      1
      (* num (expt num (- n 1)))))
(define (loop val mult loopNum)
  (if (= loopNum 1) val
      (loop (* val mult) mult (- loopNum 1))))