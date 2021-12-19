\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: Arnold Doray
\ @date: 15 Sep 2021
\

: welcome ( -- "s" ) 
    main-menu ctx{ menu }
   \  "eat-choices" add-key 
    
    {{
        img-logo
    }} randomize head ctx{ url }

    q{  
    
        <img 
            src="#{url}"
            width="335px"
            style="border-radius:6px;border:1px solid #AAA" align="center">
         
        <marquee width="100%" direction="left"  height="30px" bgcolor="#f5f5dc" style="font-size:14pt;color:black;" >Hi there! &#128075; I am Bao Buddy </marquee>
        <center>I will bring you to explore the wonderful hawker foods in Singapore. Are you ready?
        <br>
        <br>
        <p>&#128071; <b>Choose from the options below</b> &#128071; </p></center>
        
        <center>#{menu}</center>
    }q
;




