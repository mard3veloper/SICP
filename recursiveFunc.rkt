#lang sicp
(define (f n)
  (if (< n 3) n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))
(define (fIter numIter)
  (cond ((= numIter 0) 0)
        ((= numIter 1) 1)
        ((= numIter 2) 2)
        (else (loop 0 1 2 2 numIter))))
(define (loop zeroVal oneVal twoVal counter numIter)
  (if (= counter numIter) twoVal
      (loop oneVal twoVal (+ twoVal (* 2 oneVal) (* 3 zeroVal))
                    (+ counter 1) numIter)))
                      