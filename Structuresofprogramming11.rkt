; 3 this function computes the sum in the list and takes into account the nested cases not alphabets

(define (sum-up-numbers-general L)
        (cond ((null? L) 0) ; base case at which when the list is empty it returns an 0
 