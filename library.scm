(define (caar L)
  (car (car L)))

(define (cadr L)
  (car (cdr L)))

(define (cdar L)
  (cdr (car L)))

(define (cddr L)
  (cdr (cdr L)))

(define (caadr L)
  (car (car (cdr L))))

(define (caddr L)
  (car (cdr (cdr L))))

(define (cdadr L)
  (cdr (car (cdr L))))

(define (cadddr L)
  (car (cdr (cdr (cdr L)))))

(define (and x y)
  (if x y #f))

(define (or x y)
  (if x #t y))

(define (not bool)
  (if bool #f #t))

(define (equal? L1 L2)
  (cond ((null? L1) (null? L2))
		((null? L2) #f)
		((not (pair? L1)) (eq? L1 L2))
		(else (if (pair? L2)
				(cond ((equal? (car L1) (car L2)) (equal? (cdr L1) (cdr L2)))
					  (else #f))
				#f))
		))

(define (newline)
  (display #\newline))

(define (map f L)
  (cond ((null? L) '())
		(else (cons (f (car L)) (map f (cdr l))))
		))

(define (assoc obj L)
  (cond ((null? L) #f)
		((pair? (car L))
		 (cond ((eq? (caar L) obj) (car L))
			   (else (assoc obj (cdr L)))
			   ))
		 ))

(define (append L1 L2)
  (cond ((null? L1) L2)
		(else (cons (car L1) (append (cdr L1) L2)))
		))
