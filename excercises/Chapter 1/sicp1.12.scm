; Exercise 1.12
; (load "sicp1.12.scm")

; Write a procedure that computes elements of Pascal’s triangle by means of a recursive process.

(define (factorial n) (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

(define (pascal n k)
    (round (/ (factorial n) (* (factorial k) (factorial (- n k))))))
