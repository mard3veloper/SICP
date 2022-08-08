#lang sicp
(define (make-point x y)
  (cons x y))
(define (make-line p1 p2)
  (cons p1 p2))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
(define (avg x y)
  (/ (+ x y) 2))
(define (midpoint p1 p2)
  (let ((newX (avg (x-point p1) (x-point p2))))
    (let ((newY (avg (y-point p1) (y-point p2))))
      (make-point newX newY))))











 (define (deriv g)
  (let ((dx .0001))
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx))))

(define (newtons-method f startVal)
  (fixed-point startVal
   (lambda (x) (- x (/ (f x) ((deriv f) x))))))

(define (abs x)
  (if (> x 0)
      x
      (* -1 x)))

(define (fixed-point startVal f)
  (let ((nextVal (f startVal)))
    (if (< (abs (- startVal nextVal)) .001)
        nextVal
        (fixed-point (f startVal) f))))

(define (sqrFunc val)
  (lambda (x) (- (* x x) val)))

(define (sqrt val)
  (newtons-method (lambda (x) (- (* x x) val)) 0))