#lang sicp
(define (make-rat n d)
  (let ((combo (* n d)))
    (if (> combo 0)
        (cons (abs n) (abs d))
        (cons (* -1 (abs n)) (abs d)))))
(define (print-rat x)
(newline)
(display (numer x))
(display "/")
(display (denom x)))

(define (abs x)
  (if (< x 0)
      (* -1 x)
      x)
  )
      








(define (numer x) (car x))
(define (denom x) (cdr x))
