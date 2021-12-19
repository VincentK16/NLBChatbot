\
\ @author: Arnold Doray
\ @date: 29 Nov 2021
\
\ Close Approach data 
\

include utils
include json

with *utils \ needed to access http-get, param and clear-param

 \ : address@ ( tup -- "s" ) 0 @@ ; 
\ : distance@ ( tup -- n ) 4 @@ real "0.000'AU'" format ; 
\ : name@ ( tup -- "s" ) 13 @@ trim ;

: api-get ( "url" -- #|seq|null ) 
    http-get dup null? -> exit |.
    json>
;

: address-by-postalcode ( "postal-code" -- # ) { p }
 clear-params
 "postalcode" p param
 "https://api.jael.ee/datasets/hawker" api-get dup null? -> drop # exit |.
;

: print
  0 @@ { h } 
  "address" h #@ { add }
  "owner" h #@ { owner }
  add . cr
  owner . cr
 \  h #keys . 
  \  h .
  \ [:
\      dup . " = " . h #@ . 
\      cr
\  ;] reduce
;

end-with

\ Run the program
"370000..370090" address-by-postalcode print

