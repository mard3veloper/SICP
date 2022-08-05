#lang sicp
(define (pascal row col)
  (if (or (= row col) (= col 1)) 1
      (+ (pascal (- row 1) (- col 1)) (pascal row (- col 1)))))

(define (displayPascal row col rowCount colCount)
  (if (and (= rowCount row) (= colCount col))
      (display (pascal row col))
      (displayElement row col rowCount colCount)))

(define (displayElement row col rowCount colCount)
  (display (pascal rowCount colCount))
  (display " ")
  (cond (= row col)
      (displayPascal row col (+ rowCount 1) 1)
      (else (displayPascal row col rowCount (+ colCount 1)))))