\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\

: button-normal ( "s" -- "s" )
    q{
       padding:10px;
        \ border: 3px solid #EE82EE;
        background:#F5F5DC;
    }q (button)
;

: button-highlighted ( "s" -- "s" )
    q{
        padding:10px;
        background:#ffff66;
    }q (button)
;


: booking? ( "s" -- f ) "Menu" indexof 0 >= ; 


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
        "What to EAT? " 
        "List of Hawker Centre" 
        "Nearby Hawker Centre"
        
        \ "Hawker Centre Closure Dates"
        "Fun Facts"
        "Quiz your Foodie Brain"
        "FAQs"
        "About Us"
        
        \ "🎫 Book a Tour 🎫"
    }} mk-menu
;

: area ( -- "s")
  {{
        "North"
        "North-East"
        "Central"
        "East"
        "West"
        "Return to Menu"
  }} mk-menu
;

: north-area ( -- "s")
{{
  "Chong Pang Market & Food Centre"
}} mk-menu
;

: east-area ( -- "s")
 {{
 
   
   \ "Tampines"
   "Blk 216 Bedok Food Centre and Market"
   
   }} mk-menu
 ;  
 
 : west-area ( -- "s")
 {{
 
   
   "Yuhua Market And Hawker Centre"
   
   }} mk-menu
 ;
 
 : central-area ( -- "s")
 {{
 
   
   "Tiong Bahru Market"
   "Maxwell Market"
   "Hong Lim Market & Food Centre"
   "Golden Mile Food Centre"
   
   }} mk-menu
 ;

: north-east-area ( -- "s")
{{
    "Kovan Market & Food Centre"
    "79 & 79A Circuit Road Food Centre"
}} mk-menu
; 

: availability ( -- "s")
 {{
    "Cleaning Dates"
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

: type-food ( -- "s")
    {{
    "Chinese"
    "Indian"
    "Western"
    "Halal"
    "Thai"
    "Return to Menu"
    }} mk-menu
;

: more-foods ( -- "s")
 {{
   \ "More Suggestion!"
   "About the Stall"
   "Back"
   
   
  }} mk-menu
;

: feedback ( -- "s")
 {{
   "Poor"
   "Neutral"
   "Good" 
   }} mk-menu
  ;

: nearby-hawker-menu ( -- "s")
 {{
   "Return to Menu"
   }} mk-menu
;

: faq-buttons ( -- "s")
 {{
   "General"
   "Location Access"
   "How To Use"
   "Feedback/Suggestions"
  
  }} mk-menu
;

: os-buttons ( -- "s")
 {{
   "Android Devices"
   "iOS Devices"
   "Return to Menu"
  }} mk-menu
;

: location-button ( -- "s" )

 "Location Access"
 }} mk-menu
; 

: back-button ( -- "s" )
{{

 "Back"
 }} mk-menu
;

: fun-facts ( -- "s")
{{
  "UNESCO status"
  "Hawker's Hygenic"
  "Return Your Tray"
  "Healthier Options"
  "History Of Singapore Hawker Culture"
  }} mk-menu
;

: bedok-stalls ( -- "s")
{{
  "Chinese"
  "Indian"
  "Halal"
  }} mk-menu
;


: tiong-bahru-stalls ( -- "s")
 {{
  "Chinese"
  "Halal"
 }} mk-menu
;

: maxwell-stalls ( -- "s")
 {{
  "Chinese"
  "Indian"
  "Halal"
  "Thai"
  
 }} mk-menu
;



: kovan-stalls ( -- "s")
 {{
  "Chinese"
  "Snacks"
  "Halal"
  
 }} mk-menu
;

: chong-pang-stalls ( -- "s")
 {{
  "Chinese"
   "Halal"
  "Dessert"

 }} mk-menu
;

: circuit-road-stalls ( -- "s")
 {{
  "Chinese"
  "Indian"
  "Halal"
  "Thai"
   "Western"

 }} mk-menu
;

: golden-mile-stalls ( -- "s")
 {{
  "Chinese"
  "Indian"
  "Halal"
  "Thai"
  "Turkish"

 }} mk-menu
;

: hong-lim-stalls ( -- "s")
 {{
  "Chinese"
  "Snacks"
  "Halal"
 }} mk-menu
;

: yuhua-stalls ( -- "s")
 {{
  "Chinese"
  "Snacks"

 }} mk-menu
;


