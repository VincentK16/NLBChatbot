\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\


@: cancel 
cancel: Cancel Menu

mem: tour-type tour-date customer-name customer-email

: booking ( -- "s" ) 
   tour-type tour-date customer-name customer-email 
   ctx{ tt td cn ce }
   q{   
        type:#{tt}, 
        date:#{td},
        name:#{cn},
        email:#{ce},
   }q
;

: tour-menu ( -- "s" ) 
    {{
        "Nile Tour"
        "Temple Tour"
        "Pyramid Tour"
        "Custom Tour"
    }} mk-menu
;

Q: Book a Tour
MM What kind of tour would you like to book? 
MM
MM ${ tour-menu } 
M. 
K: $clear tour-type
-- 

Q: @cancel
A: ${ main-menu }
K: $clear
--

room: tour-type

Q: $x Tour
B: $x tour-type!
A: What dates are you looking at?
K: $back tour-date
--

Q: $_
MM Sorry, I don't understand. Which kind of tour do you want?
MM
MM ${ tour-menu }
M. ${ "Menu" button }
--
end-room

room: tour-date
Q: $_
B: last-question tour-date!
A: Can I have your name? 
K: $back customer-name
--
end-room

room: customer-name
Q: $_
B: last-question customer-name!
A: Can I have your email address?
K: $back customer-email
--
end-room

room: customer-email

Q: $x.@email
B: $x customer-email!
MM Great! ${ customer-name }, to confirm, you want to go on a 
MM <b>${ tour-type }</b> Tour, on <b>${ tour-date }</b>
MM and your email is <b>${ customer-email }</b>.
MM 
MM
MM Is this correct? 
MM ${ "Yes, confirmed!" button-highlighted } 
MM ${ "No, change my booking" button }
MM ${ "Cancel" button }
M. 
K: $clear
--

Q: $_
MM Oops, that doesn't look like an email address. 
MM Please try again. 
MM Is this correct? 
MM
M. ${ "Menu" button }
--
end-room

Q: Yes confirmed
MM We have received your booking and will contact you shortly.
M. ${ main-menu }
L: ${ booking }
--

