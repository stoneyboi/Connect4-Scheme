; Jacob Stone 
; Connect 4 Kawa in Scheme

(define (displayBoard num_rows num_columns)
    (define (reduce from to action partial)
        (if (<= from to)
            (reduce (+ 1 from) to action (action from partial) )
            partial
        )
    )
    (define (make-column size)
        (reduce 1 size (lambda (index partial)
        (cons 0 partial) 
        )
        '()
        )
    )

    (reduce 1 num_cols (lambda (index partial)
        (cons (make-column num_rows) partial)
    )
    '()
    )
)

(display (make-board 5 8))
(newline)