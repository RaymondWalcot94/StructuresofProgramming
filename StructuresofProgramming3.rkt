 ;1 This function computes the reversal of a list not nested
(define (reverse-general L)
  (if (null? L) ; base case at which when the list is empty it returns an empty list  
     '() ; 
     (append (reverse-general (cdr L)) (list (car L))) ; by appending the first element to the back of the recursive call reverses the list N.B. this is not for nested cases 
  )
)
