(define keep-first-n
  (lambda (n lst)
    (cond [(> n (length lst)) '()]
          [(< n 0) '()]
          [(equal? n 0) '()]
          [else (cons (car lst)
                      (keep-first-n (- n 1) (cdr lst)))])))

(define sum
  (lambda (lst)
    (if (null? lst)
        0
        (+ (car lst) (sum (cdr lst))))))
        
