;1 This computes the reversal of the list takes into account nested cases 
(define (deep-reverse L)
(cond ((null? L) L) ; base case at which when the list is empty it returns an empty list 
((list? L) (append (deep-reverse (cdr L)) (list (deep-reverse (car L))))); if L it is a list(for nested list cases) then recursively append the recursive remaining L elements in the list followed  by the recursive call of the first element in the list.
(else L))); returns list back up the call stack




;2 this function computes the sum in the list takes into account the cases  with alphabets also does not takes into account the nested list

(define (sum-up-numbers-simple L)
        (cond ((null? L) 0) ; base case at which when the list is empty it returns an 0
              ((not (number? (car L))) (sum-up-numbers-simple(cdr L))) ; checks to see if the first value is a number. If it is not a number then recursively call the remaing values in the list
               (else (+ (car L) (sum-up-numbers-simple ( cdr L )))) ; this adds the first element in the list with the call of the remaining elements once the above conditions were no satisfied
               )
  )



; 3 this function computes the sum in the list and takes into account the nested cases and alphabets

(define (sum-up-numbers-general L)
        (cond ((null? L) 0) ; base case at which when the list is empty it returns an 0 
       
        ((list? (car L)) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L)))) ; this line determines whether or not the first element in the list is actually a list itself (i.e. In ((1 2) 3 4)) (1 2) is the first element and is a list within a list. If this is the case it recursively calls the first element in the list(list within list) with a recursive call with the remaining elements in the list
        ((not (number? (car L))) (sum-up-numbers-general(cdr L))) ; this checks whether or not it is a number if it is a not is recursively calls the remaining elements. It is important to check whether the next element is a nested list before checking if it is a number. that is why this line comes after the above one. If this line isn't place after then it skips over the nested list.
        
        (else (+ (car L) (sum-up-numbers-general (cdr L)))) ; this adds the first element in the list with the call of the remaining elements once the above conditions were no satisfied
))



