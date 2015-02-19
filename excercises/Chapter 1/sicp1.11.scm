; Exercise 1.11
; (load "sicp1.11.scm")

; Write a procedure that computes f by means of a recursive process. Write a 
; procedure that computes f by means of an iterative process.

; recursive
(define (f n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

; iterative

(define (f n)
  (if (< n 3)
    n
    (f-iter 2 1 0 3 n)))

(define (f-iter x y z i n)
  (define new (+ x (* 2  y) (* 3  z)))

  (if (= i n)
    new
    (f-iter new x (- y 1) (+ i 1) n)))


(define (f n)
  (if (< n 3)
    n
    (f-iter 2 1 0 n)))

(define (f-iter a b c count)
  
  (if (< count 3)
    a
    (f-iter (+ a (* 2 b) (* 3 c))
            a
            b
            (- count 1))))

