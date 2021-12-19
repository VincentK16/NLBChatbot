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
    
    {{
        img-lantern
        img-walking
        img-jumping
    }} randomize head ctx{ url }

    q{  
        <img 
            src="#{url}"
            width="450px"
            style="border-radius:6px;border:1px solid #AAA"
        >
        <h1>Magical Egypt Tours</h1>
        <h3> 	
            &#128075;
     
            Welcome to <b>Magical Egypt Tours</b>. 
            <br></br>
            We invite you to explore through this chatbot our beautiful country of Egypt
            and our premium tour services.
            <br></br>
            Choose from the options below. &#128071;
        </h3>
        <center>#{menu}</center>
    }q
;

