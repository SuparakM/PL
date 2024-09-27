#lang racket/base

(define pi 3.141592653589793)
(define (sphere r)
    (* (/ 4 3) pi (expt r 3))
)

(sphere 5)

(define (triangle w h)
    (* 1/2 w h)
)

(triangle 20 4)

(define (grade score)
  (cond
    ((< score 40) "F")
    ((and (>= score 40) (< score 80)) "P")
    ((>= score 80) "G")
  )
)

(grade 50)

(define (second num)
  (quotient (modulo num 100) 10)
)

(second 1234)


(define (each num)
  (if (= num 0)
      1
      (* (modulo num 10) (each (quotient num 10)))
  )
)
          
(each 1234)

(reverse (list 1 2 3 4))

(append '(1 2 3))

(car (cdr (cdr (cdr '(a b c d)))))

(reverse(cdr (reverse '(a b c d))))