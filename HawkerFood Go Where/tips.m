\
\ Copyright © 2021 vincekok all rights reserved.
\
\ @author: vincekok
\ @date: 26 Nov 2021
\
\ A brief description of this program.
\
smojo/api/sg/gov/bus/info
smojo/api/sg/gov/places
smojo/api/sg/pvt/jael
smojo/api/sg/gov/map

\location

: @postalcode 
    \ [regex] \d{6}
; \@


: search-food ( -- "s" )

    area ctx{ area } 
    \ location
   \ "circuit food" address-search head 
    q{
        Hi, I'm Hawkerfood Go Where
        <br>
        Click on the area and I'll tell you what hawker center is located there
        <center>#{area}</center>
    }q 
    
   \ 103.8849394 1.328736 300 true rev-geo head
   
    
        \ 500 bus-stops-radius head coords@ 
;  

: nearby-food ( -- "s")
    location
    if \ there is a geolocation error
        ctx{ err } q{
            Geolocation seems to have failed...
            The error I'm getting is: #{err}
        }q
     else \ Show the 3 closest bus-stops as buttons.
        500 false rev-geo "" swap ['] concat reduce
       
    then
;

\ : nearby-food ( -- "s")
\    location
\    if \ there is a geolocation error
\        ctx{ err } q{
 \           Geolocation seems to have failed...
 \           The error I'm getting is: #{err}
 \       }q
 \    else \ Show the 3 closest bus-stops as buttons.
          \ "imm" address-search head coords@
        
  \       2drop 1.3258736 103.8849394 500 true rev-geo head "" concat
        
         
          \ 3 bus-stops-nearest ['] get-stop-label map { bs }
  \  then
\ ;

: what-to-eat (  -- "s" )
   type-food ctx{ type }
   
   q{
        Please select the type of food! 
        <center>#{type}</center>
    }q
;


\ -------------------------------------------------------------------------------------------
: chinese (  -- "s" )
    more-foods ctx{ more }
   
   q{
        Here's a recommendation for you: Soon Lee Lor Mee Stall 
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/soonlee_sf.jpg" width="450px"
            style="border-radius:6px;border:1px solid #AAA">
        <center>#{more}</center>
    }q
;


\ -------------------------------------------------------------------------------------------

: like ( -- "s")
  {{
       "Thank you for using Hawkergood Go Where. Please rate your experience. Have a nice day!"
       
    }} randomize head ctx{ url }
  
  q{
        <head>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
        <!-- FontAwesome JS -->
        <script src="https://kit.fontawesome.com/94bbf6a33d.js" crossorigin="anonymous"></script>
        <!-- Global CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">   
        <!-- Plugins CSS -->    
        <link rel="stylesheet" href="assets/plugins/elegant_font/css/style.css">    
        <!-- Theme CSS -->
        <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        </head>
        <body>
        <h3 style="color:SlateBlue;"><b><center>#{url}</center></h3>
        <a href="https://www.facebook.com/VKElectronics" target="blank" class="social-margin"> 
                  <div class="social-icon facebook">
                    <i class="fa fa-facebook" aria-hidden="true"></i> 
                  </div>
        </a>
        </body>
    }q
;
  

: search-location ( "s" -- "s")
  address-search head address@ building@
;


\ : hawker ( -- "s"  )
: hawker (  -- "s" )

   "370079" hawkers name@ 
   q{
   <center>#{area}</center>
   }q
    
;  


: central-food (  -- "s" ) 
  area ctx{ area }
   "198783" hawkers name@ ctx{ num }


   q{
            #{num}
            <br>
            <center><a href="https://www.google.com/maps/search/?api=1&query=198783" target="_blank"> Navigate Now! </a></center>
            <center>#{area}</center>
        
        
       
    }q
;  

: south-food ( -- "s")
area ctx{ area }
  "100082" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=100082" target="_blank"> Navigate Now! </a></center>
        <center>#{area}</center>
       
    
    }q
  
;

: east-food ( -- "s")
area ctx{ area }
  "521137" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=521137" target="_blank"> Navigate Now! </a></center>
        <center>#{area}</center>
       
    
    }q
;


: west-food ( -- "s")
area ctx{ area }
  "640505" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=640505" target="_blank"> Navigate Now! </a></center>
        <center>#{area}</center>
        
    }q
;


: north-food ( -- "s")
area ctx{ area }
  "731004" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=731004" target="_blank"> Navigate Now! </a></center>
        <center>#{area}</center>
        
    
    }q
;





Q: List 
A: ${ search-food } 
--

\ Q: $x.@postalcode
\ A: ${$x hawker}
\ --
\ Q: $x.@postalcode
\ A: ${$x search-location }
\ --

Q: North
A: ${ north-food }
--

Q: South
A: ${ south-food }
--

Q: East
A: ${ east-food }
--

Q: West
A: ${ west-food }
--

Q: Central
A: ${ central-food }
--

Q: Nearby
A: ${ nearby-food }
--

Q: EAAATTTT
A: ${ what-to-eat }
--

Q: chinese
A: ${ chinese }
--

Q: like
A: ${ like }
--



