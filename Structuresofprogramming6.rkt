;1 This computes the reversal of the list takes into account nested cases 
(define (deep-reverse L)
(cond ((null? L) L) ; base case at which when the list is empty it returns an empty list 
((list? L) (append (deep-reverse (cdr L)) (list (deep-reverse (car L))))); if L it is a list(for nested list cases) then recursively append the recursive remaining L elements in the list followed  by the recursive call of the first element in the list.
(else L))); returns list back up the call stack



;2 this function computes the sum in the list does not take into account the cases  with alphabets also crashes using nested cases


(define (sum-up-numbers-simple  L)
