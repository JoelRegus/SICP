; Exercise 1.15
; (load "sicp1.15.scm")

(define (print)(display "1")) 

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))))
