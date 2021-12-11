\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: Arnold Doray
\ @date: 15 Sep 2021
\

mem: this-question correct-answers

\ QUESTION is from quiz-helper.m
: question ( -- "s" ) 
    this-question question 
;

\ COREECT? is from quiz-helper.m
: correct? ( -- f ) 
    this-question last-question correct?
;

\ NUM-QUESTIONS is from quiz-helper.m
: last? ( -- f ) 
    this-question num-questions >
;

: next-question ( -- ) 
    this-question num-questions mod 1 + 
    this-question!
;



Q: Quiz 
B: 1 this-question! 0 correct-answers!
A: ${ question } 
K: $clear answer 
--

room: answer
Q: $_
\ Correct
    C: correct? % +correct-answers
    M% correct?
    MM https://cdn.pixabay.com/photo/2012/04/24/16/22/check-40319_1280.png
    MM Great! Your answer is correct! ${ "128079" emoji }
    MM
    M. ${ "Next Question" button } 
\ Wrong
    MM https://cdn.pixabay.com/photo/2012/04/13/00/22/red-31226_1280.png
    MM Oops, the right answer is <b>${  this-question answer-for }</b>.
    MM
    M. ${ "Next Question" button } 
K: -answer question
--
end-room

: voucher ( -- "s")
   
   q{
   <center><img src="https://cdn.pixabay.com/photo/2017/07/26/18/07/discount-2542615_1280.png" width="150px"
            style="border-radius:6px; solid #AAA"></center>
   
   }q
;


room: question
Q: $_
B: next-question
A: this-question 1 > % ${ question }
K: this-question 1 > % -question answer
MM Congratulations! You got ${ correct-answers } out 
MM of ${ num-questions } questions correct. 
MM <br><br><center> You have won yourself a 25% off voucher code. <b>Show this screenshot</b> when you visit any hawker stalls!</center>
MM ${ voucher } <br>
M. ${ main-menu }
K: $clear
--
end-room


