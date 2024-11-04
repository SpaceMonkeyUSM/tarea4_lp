#lang scheme
(define taylorSenoSimple
  (lambda (n x)
     (let calc ((i 0))
      (if (> i n)
          0
      (+ (/ (* (expt -1 i) (expt x (+ (* 2 i) 1))) (factorialSimple (+ (* 2 i) 1))) (calc (+ i 1)))))))
      
(define taylorCosenoCola
  (lambda (n x)
      (let calc ((i 0) (sum 0) (precision n))
        (if (> i precision)
          sum
        (calc (+ i 1) (+ sum (/ (* (expt -1 i) (expt x (* i 2))) (factorialCola (* i 2)))) precision)))))

(define factorialCola
  (lambda (n)
    (let fact ((i n) (a 1))
      (if (= 0 i)
          a
          (fact (- i 1) (* a i))))))

(define factorialSimple
  (lambda (n)
    (if (= n 0)
        1
        (* n (factorialSimple (- n 1))))))
