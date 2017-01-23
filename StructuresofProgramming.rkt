; This function computes the reversal of of the list without nested cases and parenthesis
(DEFINE (reversing-general L)
        (IF(NULL? L ) ; if list is empty return back empty list;
           
         '();
         (begin
              (reversing-general( cdr L)) ; recursively calls the other elements of the list. 
             )
         )
        )


