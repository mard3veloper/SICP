#lang sicp
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

(define (productIter term a next b)
  (define (iter a total)
    (if (> a b)
        total
        (iter (next a) (* total (term a)))))
  (iter a 1))

(define (nextVal a) (+ a 1))
(define (func a) a)

(define (Pi a)
  (/ (* (/ (numerator a) (denominator a)) 4) a))
(define (numerator a)
    (* (square (productIter func 4 nextValPi a)) 2))
(define (denominator a)
    (square (productIter func 3 nextValPi a)))
(define (nextValPi a)
  (+ 2 a))
(define (square a)
  (* a a))