\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\

: button-normal ( "s" -- "s" )
    q{
        padding:10px;
        border: 3px solid #EE82EE;
        border-radius: 50%;
        background:#F5F5DC;
    }q (button)
;

: button-highlighted ( "s" -- "s" )
    q{
        padding:10px;
        background:#ffff66;
    }q (button)
;


: booking? ( "s" -- f ) "Book" indexof 0 >= ; 


: button ( "s" -- "s" ) 
    dup booking? -> button-highlighted exit |.
    button-normal
;



: mk-menu ( seq -- "s" ) { ss }
    ""
    ss [: button concat ;] reduce 
;

: main-menu ( -- "s" ) 
    {{
        "Tips for Visitors &#9889;"
        "Discover Egypt 🚗"
        "Nile Tour ⛵"
        "Temple Tour 🛕"
        "Pyramid Tour 🔺"
        "Quiz 🙋"
        "🎫 Book a Tour 🎫"
    }} mk-menu
;

: more-facts ( -- "s")
    {{
        "More Facts 🚗"
        "🏠 Menu 🏠"
    }} mk-menu
;

: more-tips ( -- "s")
    {{
        "More Tips &#9889;"
        "🏠 Menu 🏠"
    }} mk-menu
;



