(define square (
                    lambda (x)   (* x x)))
(define average (
                    lambda (x y) (* (+ x y) 0.5))) 
(define close-enuf? (
                    lambda (g x)
                                 (< abs(- (square g) x) 0.001)))
(define improve (
                    lambda (g x)
                                 (average g (/ x g))))
