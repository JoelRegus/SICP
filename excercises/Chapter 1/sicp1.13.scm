; Exercise 1.13
; (load "sicp1.13.scm")

(define phi (/ (+ 1.0 (sqrt 5)) 2))
(define psi (/ (- 1.0 (sqrt 5)) 2))

(define (golden n)
    (/ (- (expt phi n) (expt psi n)) (sqrt 5)))
