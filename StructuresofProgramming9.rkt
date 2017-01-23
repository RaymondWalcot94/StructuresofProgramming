;1 This computes the reversal of the list takes into account nested cases 
(define (deep-reverse L)
(cond ((null? L) L) ; base case at which when the list is empty it returns an empty list 
((list? L) (append (deep-reverse (cdr L)) (list (deep-reverse (car L))))); if L it is a list(for nested list cases) then recursively append the recursive remaining L elements in the list followed  by the recursive call of the first element in the list.
(else L))); returns list back up the call stack



;2 this function computes the sum in the list does not take into account the cases  with alphabets also crashes using nested cases


(define (sum-up-numbers-simple  L)



;2 this function computes the sum in the list does not take into account the cases  with alphabets also crashes using nested cases


(define (sum-up-numbers-simple  L)
         (if (null? L) ; base case at which when the list is empty it returns an 0
              0
         (+ (car L) (sum-up-numbers-simple (cdr L))) )); this adds the first value of the list to the recrusive call of the remaining elements in the list. Once the list becomes empty then the sum accumulates as it returns back up the call stack




;2 this function computes the sum in the list takes into account the cases  with alphabets also does not takes into account the nested list

(define (sum-up-numbers-simple L)
        (cond ((null? L) 0) ; base case at which when the list is empty it returns an 0
              ((not (number? (car L))) (sum-up-numbers-simple(cdr L))) ; checks to see if the first value is a number. If it is not a number then recursively call the remaing values in the list
              
)


;2 this function computes the sum in the list takes into account the cases  with alphabets also does not takes into account the nested list

(define (sum-up-numbers-simple L)
        (cond ((null? L) 0) ; base case at which when the list is empty it returns an 0
              ((not (number? (car L))) (sum-up-numbers-simple(cdr L))) ; checks to see if the first value is a number. If it is not a number then recursively call the remaing values in the list
               (else (+ (sum-up-numbers-simple ( cdr L ) (car L) ))) ; this adds the first element in the list with the call of the remaining elements once the above conditions were no satisfied
               )
  )

