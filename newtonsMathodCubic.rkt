#lang sicp
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

(define (cubicVal a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))