;4 computes the minimum of both L1 and L2   
(define (mini1 L1)
 
       ( if (null? L1) #f)  ; if list is empty return back false
       
       (if( not (number? (car L1))) ( mini1 (cdr L1))) ;if first element is not a number then recursively call the remaing of the list
        (cond
          ( (null? L2) #f) ; if list is empty return false
          ( (null? (cdr L1)) (car L1)) ; if list is empty return false
          (( not (number? (car L1))) ( mini2 (cdr L1))) ; if remaing of list is empty return first element of list remaining
          ( (< (car L1) (mini1 (cdr L1 ))) (car L1)) ; if the first element is smaller than the recursive call of the remaining elements in the list then return that number back up
          ( (mini1 (cdr L1 )))) )  ; else recursively call the remainder of the list






(define (mini2 L2)
 (begin
         (if (null? L2) #f) ; if list is empty return back false
         
          
       (if ( not (number? (car L2))) ( mini2 (cdr L2))) ;if first element is not a number then recursively call the remaing of the list
        (cond
           ( (null? L2) #f) ; if list is empty return false
          ((null? (cdr L2)) (car L2)) ; if remaing of list is empty return first element of list remaining
           (( not (number? (car L2))) ( mini2 (cdr L2))) ;if element it is not a number then recrusively call the remainder of elements in the list 
          ( (< (car L2) (mini2 (cdr L2 ))) (car L2)) ; if the first element is smaller than the recursive call of the remaining elements in the list then return that number back up
          ( (mini2 (cdr L2 )))) )) ; else recursively call the remainder of the list



 
(define (min-above-min L1 L2)
(begin
  
       (if (null? L2) #f) ; if empty return false
      ( if (EQ? ( car '(0 1) )( car '(0 1) ))  (mini2 L2)) ;  calulcate the minimum value of L2

       (if (null? L1) #f) ; if empty return false
      (if  (EQ? ( car '(0 1) )( car '(0 1) ))   (mini1 L1)) ));  calculate the minimum value of L1
       
     