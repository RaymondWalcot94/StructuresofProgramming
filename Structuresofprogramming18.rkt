;4 computes the minimum of both L1 and L2
 (define (mini2 L2)
 (begin
         (if (null? L2) #f) ; if list is empty return back false
         
          
       (if ( not (number? (car L2))) ( mini2 (cdr L2))) ;if first element is not a number then recursively call the remaing of the list
        (cond
           ( (null? L2) #f) ; if list is empty return false
          ((null? (cdr L2)) (car L2)) ; if remaing of list is empty return first element of list remaining
           (( not (number? (car L2))) ( mini2 (cdr L2)))
          
