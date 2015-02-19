; Exercise 1.6
; (load "sicp1.6.scm")

; What happens when Alyssa attempts to use this to compute square roots? Explain.

; Cond is not a special form, unlike if all it's elements have to be evaluated. 
; The else-clause will lead to an infinite loop because we are constantly being
; thrown into new-if via sqrt-iter;

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause) 
  (cond (predicate then-clause)
    (else else-clause)))

(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

