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


 @: poor good neutral
 poor: Poor dislike uncomfortable 
 good: Good like awesome 
 neutral: neutral ok 


  


: @postalcode 
    \ [regex] \d{6}
; \@


: welcome ( -- "s" ) 
    main-menu ctx{ menu }
    
    {{
        img-logo
    }} randomize head ctx{ url }

    q{  
        <img 
            src="#{url}"
            width="335px"
            style="border-radius:6px;border:1px solid #AAA" align="center"
        >
        <h1 align="center">HawkerFood Go Where</h1>
        <h3 align="center">
            We invite you to explore through this chatbot our wonderful food.
            <br></br>
            Choose from the options below. &#128071;
        </h3>
        <center>#{menu}</center>
    }q
;


: search-food ( -- "s" )

    area ctx{ area } 
    \ locationnearby-hawker-menu
   \ "circuit food" address-search head 
    q{
    
        <br>
        Click on the area and I'll tell you what hawker center is located there! 
        <center>#{area}</center>
    }q 
    
   \ 103.8849394 1.328736 300 true rev-geo head
   
    
        \ 500 bus-stops-radius head coords@ 
;  


: mrt? ( "s" -- "f")
   
   
   
   address@ building@ "MRT" indexof 0  >=  
   null? 
   
   
;

\ : hawker? ( "s" --f)
\  address@ building@ "HAWKER" indexof 0 >=
\ ;

: postal? ( "s" -- "s") { b }

			
			 b "04" same?     ->  "Market Street Interim Food Centre"    	  |
			 b "05" same?     ->  "People's Park Food Centre"    	  |
			 b "06" same?     ->  "Amoy Street Food Centre"    	  |
			 b "07" same?     ->  "Maxwell Food Centre"    	  |
			 b "08" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			 b "09" same?     ->  "11 Telok Blangah Crescent Market and Food Centre"    	  |
			 b "10" same?     ->  "Telok Blangah Drive Food Centre"    	  |
			 b "11" same?     ->  "Pasir Panjang Food Centre"    	  |
			 b "12" same?     ->  "353 Clementi Ave 2 Market/Cooked Food Centre"    	  |
			
			 b "13" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			 b "14" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			 b "15" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			 b "16" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			 b "17" same?     ->  "6 Tanjong Pagar Plaza Market and Food Centre"    	  |
			
			 b "18" same?     ->  "Albert Centre Market & Food Centre"    	  | 
			 b "19" same?     ->  "North Bridge Road Market & Food Centre"    	  |
			 b "20" same?     ->  "Berseh Food Centre"    	  |
			 b "21" same?     ->  "Pek Kio Market & Food Centre"    	  |
			 b "22" same?     ->  "Newton Circus Food Centre"    	  |
			 b "23" same?     ->  "Newton Circus Food Centre"    	  |
			 b "24" same?     ->  "Zion Riverside Food Centre"    	  |
			 b "25" same?     ->  "Zion Riverside Food Centre"    	  |
			 b "26" same?     ->  "7 Empress Road Market and Food Centre"    	  |
			 b "27" same?     ->  "44 Holland Drive Market and Food Centre"    	  |
			
			 b "28" same?     ->  "Adam Road Food Centre"    	  |
			 b "29" same?     ->  "Adam Road Food Centre"    	  |
			 b "30" same?     -> "Adam Road Food Centre" |
		    
		     b "31" same?     -> "Kim Keat Palm Market and Food Centre" |
			 b "32" same?     ->  "Whampoa Makan Place"    	  |
			 b "33" same?     ->  "Bendemeer Market and Food Centre"    	  |
			
			 b "34" same?     ->  "Geylang Bahru Market and Food Centre"    	  |
			 b "35" same?     ->  "Geylang Bahru Market and Food Centre"    	  |
			 b "36" same?     ->  "79A Circuit Road Food Centre"    	  |
			 b "37" same?     ->  "79A Circuit Road Food Centre"    	  |
			 b "38" same?     ->  "17 Upper Boon Keng Road Market and Food Centre"    	  |
			 b "39" same?     ->  "51 Old Airport Road Food Hawker Centre & Shopping Mall"    	  |
			 b "40" same?     ->  "Geylang Serai Market"    	  |
			 b "41" same?     ->  "Eunos Crescent Market and Food Centre"    	  |
			 b "42" same?     ->  "Dunman Food Centre"    	  |
			 b "43" same?     -> "Haig Road Market & Food Centre" |
		     b "44" same?     -> "84 Marine Parade Central Market and Food Centre" |
		     b "45" same?     -> "50A Marine Terrace Market and Food Centre" |
		     b "46" same?     -> "16 Bedok South Road Market and Food Centre" |
			 b "47" same?     ->  "630 Bedok Reservoir Road Market and Food Centre"    	  |
			 b "48" same?     ->  "630 Bedok Reservoir Road Market and Food Centre"    	  |
			 b "49" same?     ->  "The Changi Village Hawker Centre"    	  |
			 b "50" same?     ->  "The Changi Village Hawker Centre"    	  |
			 b "51" same?     ->  "Pasir Ris Central Hawker Centre"    	  |
			 b "52" same?     ->  "Tampines Street 11 Market and Food Centre"    	  |
			 b "53" same?     ->  "Hainanese Village Centre"    	  |
			 b "54" same?     ->  "Ci Yuan Hawker Centre"    	  |
			 b "55" same?     ->  "Serangoon Garden Market"    	  |
			 b "56" same?     ->  "Mayflower Market and Food Centre"    	  |
			 b "57" same?     ->  "Shunfu Mart"    	  |
			 b "58" same?     -> "Bukit Timah Market" |
		     b "59" same?     -> "Yuhua Village Market and Food Centre" |
			 b "60" same?     -> "Yuhua Village Market and Food Centre" |
		     b "61" same?     -> "Taman Jurong Market & Food Centre" |
			
			 b "62" same?     ->  "Taman Jurong Market & Food Centre"    	  |
			 b "63" same?     ->  "Taman Jurong Market & Food Centre"    	  |
			 
			 b "64" same?     ->  "505 Jurong West Street 52 Market and Food Centre"    	  |
			 b "65" same?     ->  "221A Boon Lay Place Market and Food Village"    	  |
			 b "66" same?     ->  "221A Boon Lay Place Market and Food Village"    	  |
			
			 b "67" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 b "68" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 b "69" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 b "70" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 b "71" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 b "72" same?     ->  "Bukit Panjang Hawker Centre and Market"    	  |
			 
			 b "73" same?     -> "20/21 Marsiling Lane Market and Food Centre" |
		     b "74" same?     -> "Marsiling Mall Hawker Centre" |
		     
		     b "75" same?     ->  "Chong Pang Market & Food Centre"    	  |
			 b "76" same?     ->  "Chong Pang Market & Food Centre"    	  |
			 
			 b "77" same?     ->  "Yishun Park Hawker Centre"    	  |
			 b "78" same?     ->  "Yishun Park Hawker Centre"    	  |
			 b "79" same?     ->  "Yishun Park Hawker Centre"    	  |
			 b "80" same?     ->  "Yishun Park Hawker Centre"    	  |
			 otherwise  	    "There's no nearby hawker center. Try walk around!"   |.
			 
		
			\ b "57" same?     ->  ""    	  |
			 \ b "37" same?     ->  "" |
			 \ b "50" same?   -> "" |
		     \ b "46" same?    ->  ""  	  |
		     \ b "18" same?    ->  ""  	  |
		     \ b "53" same? -> "" |
		     
	       
		
;
	
	   
 \ "57" same? if "Shunfu Market" else 


: nearby-food ( -- "s")
    location
    if \ there is a geolocation error
        ctx{ err } q{
            Geolocation seems to have failed...
            The error I'm getting is: #{err}
        }q
     else \ Show the 3 closest bus-stops as buttons.
        500 false rev-geo head address@ postal@ 0 2 substring2 postal? \ "37" same? if "Yes it is 37" else "no, it is not" then
        
         \ "Bingo!" reduce
        
        \ ['] mrt? filter
        

         \ "" swap ['] concat reduce
        
        \ mrt? filter 
        
       
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
        <html>
        <head>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
          color: orange;
        }
        </style>
        </head>
        <body>

        
                
        <p>Here's a recommendation for you:</p><br>
        <center><h3>Soon Lee Lor Mee Stall</h3></center>
        <center>#01-07, 79A Cirtuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/soonlee_sf.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: indian (  -- "s" )
    more-foods ctx{ more }
   
   q{
        <html>
        <head>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
          color: orange;
        }
        </style>
        </head>
        <body>

        
                
        <p>Here's a recommendation for you:</p><br>
        <center><h3>Karuna's Kitchen</h3></center> 
        <center>#01-13, 79A Cirtuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/karunaskitchen_sf.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: western (  -- "s" )
    more-foods ctx{ more }
   
   q{
        <html>
        <head>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
          color: orange;
        }
        </style>
        </head>
        <body>

        
                
        <p>Here's a recommendation for you:</p><br>
        <center><h3>Do & Me</h3></center> 
        <center>#01-27, 79A Cirtuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/doandme_sf.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: halal (  -- "s" )
    more-foods ctx{ more }
   
   q{
        <html>
        <head>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
          color: orange;
        }
        </style>
        </head>
        <body>

        
                
        <p>Here's a recommendation for you:</p><br>
        <center><h3>Rabia Muslim Food</h3></center> 
        <center>#01-96, 79A Cirtuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/rabiamuslimfood_sf.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: thai (  -- "s" )
    more-foods ctx{ more }
   
   q{
        <html>
        <head>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
          color: orange;
        }
        </style>
        </head>
        <body>

        
                
        <p>Here's a recommendation for you:</p><br>
        <center><h3>Omar Thai Beef Noodles & Rice</h3></center> 
        <center>#01-54, 79A Cirtuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/omarthai_sf.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;



\ -------------------------------------------------------------------------------------------

: like ( -- "s")
 feedback ctx{ fb }
  {{
       "Thank you for using Hawkergood Go Where. Please rate your experience using our platform!"
       
    }} randomize head ctx{ url }
  
  q{
      
        <h3 style="color:SlateBlue;"><b><center>#{url}</center></h3>
        <h3> #{fb} </h3>
     
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
  availability ctx{ avail }
  "198783" hawkers name@ ctx{ num }


   q{
        
            #{num}
            <br>
            <center><strong><a href="https://www.google.com/maps/search/?api=1&query=North Bridge Road Market & Food Centre" target="_blank"> Navigate Now! </a></strong></center>
            <center>#{area} #{avail}</center>
       
    }q
;  

: central-avail ( -- "s")
  q{
   The hawker center cleaning schedule as below:
   <br>
   1. Q1 1st - 2nd March 2021
   <br>
   2. Q2 3rd May 2021
   <br>
   3. Q3 2nd - 4th August 2021
   <br>
   4. Q4 8th November 2021
   <br>
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

: east-area ( -- "s")
east-area ctx{ east }
 q{
 Please pick the area
 <br>
 <center>#{east}</center>
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

: thank-you-feedback ( -- "s")
  
 q{
  <h2> Thank you for your rating! Have a nice day! </h2>
  }q
  
;

: google-search ( "s" -- "s") { bs }
  
  
  bs "https://www.google.com/maps/search/?api=1&query=" concat { map }
  
  q{
     <br>
     <p> bs </p>
     <a href=#{map}> Navigate Now! </a>
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
A: ${ east-area } 
--

Q: Tampines
A: ${ east-food }
--

Q: West
A: ${ west-food }
--

Q: Central
A: ${ central-food }
--

Q: Nearby
A: ${ nearby-food } <center>${ "Menu" button-highlighted }</center>
--

Q: EAT
A: ${ what-to-eat }
--

Q: chinese
A: ${ chinese }
--
Q: indian
A: ${ indian }
--
Q: western
A: ${ western }
--

Q: halal
A: ${ halal }
--

Q: thai
A: ${ thai }
--

Q: like
A: ${ like }
--

Q: Status
A: ${ central-avail } <center>${ "Menu" button-highlighted }</center>
--

Q: $poor|$neutral|$good 
A: ${ thank-you-feedback } <center>${ "Menu" button-highlighted }</center>
\ L: ${ thank-you-feedback }
--

Q: Menu
A: ${ welcome }
--





