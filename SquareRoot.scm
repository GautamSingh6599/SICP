(define square      (
                    lambda  (x)   (* x x)))
(define average     (
                    lambda  (x y) (* (+ x y) 0.5))) 
(define close-enuf? (
                    lambda  (g x)
                                 (< abs(- (square g) x) 0.001)))
(define improve     (
                    lambda  (g x)
                                 (average g (/ x g))))
(define sqrt-loop   (
                    lambda  (g x)
					             (if (close-enuf g x)
								     (g)
									 (sqrt-loop (improve g x) x))))
(define	sqrt 		(						 
                     lambda (x)
					             (sqrt-loop 1.0 x)) 