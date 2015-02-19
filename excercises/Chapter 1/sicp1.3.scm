; Exercise 1.3
; (load "sicp1.3.scm")
;Define a procedure that takes three numbers as arguments and
;returns the sum of the squares of the two larger numbers.


(define (square a)
  (* a a))

(define (sum-square a b)
  (+ (square a) (square b)))

(define (sum-of-larger-squares a b c)
  (sum-square (if (>= a b) a b) (if (>= b c) b c)))
