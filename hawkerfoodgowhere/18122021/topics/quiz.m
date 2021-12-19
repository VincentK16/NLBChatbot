\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: Arnold Doray
\ @date: 15 Sep 2021
\

mem: this-question correct-answers score
0 score!

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

: add-score
  10 score + score!
;

Q: Quiz 
B: 1 this-question! 0 correct-answers!
A: ${ question } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear answer 
--

room: answer
Q: $_
\ Correct
    C: correct? % +correct-answers add-score
    M% correct?
    MM https://cdn.pixabay.com/photo/2021/04/09/08/12/steamer-6163747_1280.png
    MM <center>Great! Your answer is correct! You had earned <p style="color:green"><b>+10 Bao points!</b></p> ${ "128079" emoji } </center>
    MM
    M. ${ "Next Question" button } 
\ Wrong
    MM https://cdn.pixabay.com/photo/2012/04/13/00/22/red-31226_1280.png
    MM <center>Oops, the right answer is <b>${  this-question answer-for }</b>. </center>
    MM
    M. ${ "Next Question" button } 
K: -answer question
--
end-room

: well-done
 q{
    <img src="https://cdn.pixabay.com/photo/2020/06/04/09/22/praise-5257999_1280.png" width="330px"
            style="border-radius:6px;solid #AAA">
 }q
;




room: question
Q: $_
B: next-question 
A: this-question 1 > % ${ question } <center>${ "Return to Menu" button-highlighted }</center>
K: this-question 1 > % -question answer
MM <center><h5>Congratulations! You got ${ correct-answers } out 
MM of ${ num-questions } questions correct.</h5> 
MM ${ well-done } 
MM You have earned yourself <p style="color:green"><b>${ score } Bao points!</b></center>
MM <br>
MM Disclaimer: Bao points are <b>NOT REAL</b> points for now. This is for fun purpose.
M. <center>${ main-menu } </center>
K: $clear
--
end-room






