#lang sicp
(define (simpson f a b n)
  (* (/ (/ (- b a) n) 3) (+ (f a) (f b) (recur f (+ a (/ (- b a) n)) (- b (/ (- b a) n)) (/ (- b a) n) 1))))

(define (recur f a b dx swapper)
  (if (> a b)
      0
      (+ (* (swapVal swapper)(f a)) (recur f (+ a dx) b dx (+ swapper 1)))))

(define (swapVal n)
  (if (= (remainder n 2) 0)
      2
      4))

(define (cube n)
  (* n n n))