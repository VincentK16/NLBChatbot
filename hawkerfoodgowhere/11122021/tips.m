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

mem: place

@: poor good neutral place
poor: Poor dislike uncomfortable 
good: Good like awesome 
neutral: neutral ok 
place: Soon_Lee_Lor_Mee Karuna's_Kitchen Do_&_Me Rabia_Muslim_Food Omar_Thai_Beef_Noodles_&_Rice

: @postalcode 
    \ [regex] \d{6}
; \@


: share-chatbot
    q{
       <center><p> Share the Chatbot lah! </p>
       <a href="https://bit.ly/hfgwws" target="_blank"><img src="https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere/ws.png?raw=true" alt="HTML tutorial" style="width:42px;height:42px;"></a>
       <a href="https://bit.ly/hfgwfb" target="_blank"><img src="https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere/fb.png?raw=true" alt="HTML tutorial" style="width:42px;height:42px;"></a>
       <a href="https://bit.ly/hfgwtgr" target="_blank"><img src="https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere/tg.png?raw=true" alt="HTML tutorial" style="width:57px;height:42px;"></a>
       <a href="https://bit.ly/hfgwtwitter" target="_blank"><img src="https://i.imgur.com/LBmuQSY.png" alt="HTML tutorial" style="width:57px;height:42px;"></a>
        </center>
    }q
;

: fav-bus-stop@ 
   "place" p#@
;

: fav-bus-stop! 
   "place" swap p#! 
;


: about-us ( -- "s" ) 
    main-menu ctx{ menu }
    
    img-logo ctx{ url }
 
    
    q{  
        <img 
            src="#{url}"
            width="335px"
            style="border-radius:6px;border:1px solid #AAA"
            align="center"
        >
        <h1 align="center">HawkerFood Go Where Team</h1>
        <h3 align="center">
            We are a bunch of Food lovers who enjoy hawkerfood and want to share more of the hawkerfood to more people.
            We hope that you will journey with us through this chatbot to explore our wonderful food.</h3>
            <br></br>
            <center><a href="https://www.facebook.com/hawkerfoodgowhere/" target="_blank"><img src="https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere/fb.png?raw=true" style="width:42px;height:42px;"></a>
            <a href="https://www.instagram.com/hawkerfoodgowhere/" target="_blank"><img src="https://i.imgur.com/j3b7gr0.png" style="width:42px;height:42px;"></a></center>
       <center>#{menu}</center>
    }q
;


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
\ : welcome ( -- "s" ) 
\     main-menu ctx{ menu }
\     
\     {{
\         img-logo
\     }} randomize head ctx{ url }
\ 
\     q{  
\         <img 
\             src="#{url}"
\             width="335px"
\             style="border-radius:6px;border:1px solid #AAA" align="center"
\         >
\         <h1 align="center">HawkerFood Go Where</h1>
\         <h3 align="center">
\             We invite you to explore through this chatbot our wonderful food.
\             <br></br>
\             Choose from the options below. &#128071;
\         </h3>
\         <center>#{menu}</center>
\     }q
\ ;

: fun-facts-menu ( -- "s")
  fun-facts ctx{ facts }
  
  q{ 
  Click on each of these below to learn more about some fun facts of Singapore's Hawker Culture!
  <br>
  <center>#{facts}</center>
  }q
;

: fun-facts-unesco ( -- "s")
    fun-facts ctx{ facts }


q{
   <img src="https://images.unsplash.com/photo-1504755629334-c1334b588447?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1936&q=80" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
   <center><p>Hawker Culture in Singapore was successfully inscribed as Singapore's first element on the UNESCO Representative List of the Intangible Cultural Heritage of Humanity on 16 Dec 2020. <br><br> The Intergovernmental Committee unanimously gave their support towards the inscription of Hawker Culture in Singapore.</p></center>
   <center>#{facts}</center>
}q
;

: fun-facts-hygenic ( -- "s")
    fun-facts ctx{ facts }


q{
   <img src="https://i.imgur.com/s2RHbxt.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
  <center><h2>How do you know if the hawker stall you are buying from is hygenic? Check out the grade displayed on the stall! 
</h2></center>

<p>
<li><b>A</b> for a score of 85 per cent or higher.
<li><b>B</b> for a score of 70 per cent to 84 per cent. 
<li><b>C</b> for a score of 50 per cent to 69 per cent. <br><br> These grades are to be displayed on hawker stands.This is one of the requirement for the business licensing, where a sufficient standard of hygiene is required for the stall to operate, and rewarding exceptionally good hygiene.
</p>
    <center>#{facts}</center>
}q
;

: fun-facts-tray ( -- "s")
fun-facts ctx{ facts }


q{
   <img src="https://cdn.pixabay.com/photo/2016/07/23/17/04/hammer-1537123__480.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
 <center><h2>Did you know you can get fine when you are at the hawker centre?</h2></center>
 <br>

<center><p>
With effect from 1 September 2021, it is a littering offence now to leave behind food trays, crockery, used tissues, wet wipes, drink straws, food wrappers, drink cans, plastic water bottles, food remnants and any other litters at hawker centres. </center>
<br> <li>First-time offenders will be issued a written warning. <li>Second-time offenders will face a composition fine of $300. <li>Subsequent offenders may face court fines under the Environmental Public Health Act<br> 
</p>
    <center>#{facts}</center>
}q
;

: fun-facts-healthier ( -- "s")
fun-facts ctx{ facts }


q{
   <img src="https://www.hpb.gov.sg/images/default-source/default-album/lowercalorieoption.tmb-medium.png?sfvrsn=2da9c372_1" width="330px"
            style="border-radius:6px; solid #AAA">
 <center><h2>You can also choose healthier options at the hawker without eating salads. 
</h2></center>

<p>
Look out for dishes with the <b>“lower-calorie option”</b> healthier choice symbol, which provides less than 500 calories per serve.
<br>
<br>
Check out the list of food here: <a href="https://www.hpb.gov.sg/docs/default-source/default-document-library/intrinsic-lower-calories-food_apr-2018.pdf?sfvrsn=a8a9c372_0" target="_blank">Intrinsic Lower Calories Food</a> <br> 
</p>
    <center>#{facts}</center>
}q
;

: fun-facts-history ( -- "s")
fun-facts ctx{ facts }


q{
 
 <center><h4>From street peddlers to food masters in hawker centres, hawkers have been feeding Singaporeans for over a century. How did this humble trade become our national culture and part of our DNA?
</h4></center>

 <iframe width="330" height="250" src="https://www.youtube.com/embed/pw1oLexEGzo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <center>#{facts}</center>
}q
;

: faq ( -- "s")
   faq-buttons ctx{ buttons }
   
   q{ 
        <h3>Click on the category to find out more!</h3>
        <center>#{buttons}</center>
   }q
;

: general ( -- "s")
   faq-buttons ctx{ buttons }
   
   q{ 
        <h3><center>Why is my the suggested nearby Hawker is not nearby at all?</center></h3>
        <h5><center>The nearby Hawker is the Hawker Center that is operated by NEA excluded those Kopitiam/Coffee Shops</center></h5>
        <br>
        <br>
        <center>#{buttons}</center>
   }q
;

: location-access ( -- "s")
   
   os-buttons ctx{ os }
   q{ 
        <h3><center>How to turn on location access?</center></h3>
        <h5><center> Check out the guide for Android/iOS! </center></h5>
        <center>#{os}</center>
        <br>
        <br>
    
   }q
 ;
 
: ios ( -- "s")
 q{
  <iframe width="150" height="300" src="https://www.youtube.com/embed/H6NBFeNLUwI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  }q
;

: android ( -- "s")

 q{
   <iframe width="150" height="300" src="https://www.youtube.com/embed/N0XLHrkhkSw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 }q
;
 
\  : busy-chart ( -- "s")
\  
\  q{
\  
\     <head>
\     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/charts.css/dist/charts.min.css">
\         <style>
\         body {
\         display: flex;
\         justify-content: center;
\         align-items: center;
\         height: 100vh;
\         margin: 0;
\         }
\ 
\         #column-example-10 {
\         height: 200px;
\         max-width: 300px;
\         margin: 0 auto;
\         }
\         </style>
\     
\     </head>
\     
\     
\     <body>
\     <table id="column-example-10" class="charts-css column show-labels"><caption> Column Example #10 </caption> <thead><tr><th scope="col"> Year </th> <th scope="col"> Progress </th></tr></thead> <tbody><tr><th scope="row"> 2016 </th> <td style="--size:0.2;"></td></tr> <tr><th scope="row"> 2017 </th> <td style="--size:0.4;"></td></tr> <tr><th scope="row"> 2018 </th> <td style="--size:0.6;"></td></tr> <tr><th scope="row"> 2019 </th> <td style="--size:0.8;"></td></tr> <tr><th scope="row"> 2020 </th> <td style="--size:1;"></td></tr></tbody></table>
\     
\     </body>
\     }q
\ ;
    
    
 
 
 : feedback-suggestions ( -- "s")
    faq-buttons ctx{ buttons }
   
   q{ 
   
         <p> Come come! I am patiently waiting for your feedback so that I can serve you better. Type your feedback below! <p>

    
   }q
 ;

: plot-map ( -- "s")
    q{
    <center>
    <iframe
  width="300"
  height="150"
  style="border:0"
  loading="lazy"
  allowfullscreen
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&q=Space+Needle,Seattle+WA">
</iframe>
    
    <center>
    
    }q
;

: search-food ( -- "s" )

    area ctx{ area } 
    \ locationnearby-hawker-menu
   \ "circuit food" address-search head 
    q{
        <img src="https://media1.giphy.com/media/YALt0A8OLuhwhfulqF/giphy.gif?cid=790b76118ec4ff741ee3ffaddeedae2c78a2a169babcdcd3&rid=giphy.gif&ct=g" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
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

			
			 b "04" same?     ->  
                                    q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2816, 103.848">
                                        </iframe>
                                        </center>
                                        <center><h3>Street Interim Food Centre</h3></center>
                                    }q
			 
			 |
			 b "05" same?     ->    	
			                 
                                    q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                       src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2849, 103.842">
                                        </iframe>
                                        </center>
                                        <center><h3>People's Park Food Centre</h3></center>
                                    }q
			 |
			 b "06" same?     ->   
                                    
                                    q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2793, 103.846">
                                        </iframe>
                                        </center>
                                        <center><h3>Amoy Street Food Centre</h3></center>
                                    }q
			 |
			 b "07" same?     ->   	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2804, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>Maxwell Food Centre</h3></center>
                                    }q
			 |
			 b "08" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2766, 103.843">
                                        </iframe>
                                        </center>
                                        <center><h3>6 Tanjong Pagar Plaza Market and Food Centre</h3></center>
                                    }q
			 
			 |
			 b "09" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2774, 103.818">
                                        </iframe>
                                        </center>
                                        <center><h3>11 Telok Blangah Crescent Market and Food Centre</h3></center>
                                    }q
			 
			 |
			 b "10" same?     ->   	 
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2734, 103.807">
                                        </iframe>
                                        </center>
                                        <center><h3>Telok Blangah Drive Food Centre</h3></center>
                                    }q
			 |
			 b "11" same?     ->  ""    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2758, 103.791">
                                        </iframe>
                                        </center>
                                        <center><h3>Pasir Panjang Food Centre</h3></center>
                                    }q
			                        |
			 b "12" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3144, 103.770">
                                        </iframe>
                                        </center>
                                        <center><h3>353 Clementi Ave 2 Market/Cooked Food Centre</h3></center>
                                    }q
			 |
			
			 b "13" same?     ->   
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3038, 103.764">
                                        </iframe>
                                        </center>
                                        <center><h3>West Coast Market Square</h3></center>
                                    }q
		        |
			 b "14" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2997, 103.797">
                                        </iframe>
                                        </center>
                                        <center><h3>Tanglin Halt Food Centre</h3></center>
                                    }q
			 |
			 b "15" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2878, 103.818">
                                        </iframe>
                                        </center>
                                        <center><h3>Redhill Market</h3></center>
                                    }q
			 |
			 b "16" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2847, 103.832">
                                        </iframe>
                                        </center>
                                        <center><h3>Tiong Bahru Market</h3></center>
                                    }q
			 |
			 b "17" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2888, 103.827">
                                        </iframe>
                                        </center>
                                        <center><h3>The Changi Village Hawker Centre</h3></center>
                                    }q
			 |
			
			 b "18" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.301, 103.854">
                                        </iframe>
                                        </center>
                                        <center><h3>Albert Centre Market & Food Centre</h3></center>
                                    }q	  
                                    | 
			 b "19" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3059, 103.864">
                                        </iframe>
                                        </center>
                                        <center><h3>North Bridge Road Market & Food Centre</h3></center>
                                    }q
			 |
			 b "20" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3073, 103.856">
                                        </iframe>
                                        </center>
                                        <center><h3>Berseh Food Centre</h3></center>
                                    }q
			 |
			 b "21" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3161, 103.850">
                                        </iframe>
                                        </center>
                                        <center><h3>Pek Kio Market & Food Centre</h3></center>
                                    }q
			                    |
			 b "22" same?     ->  
			                       q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.312, 103.839">
                                        </iframe>
                                        </center>
                                        <center><h3>Newton Circus Food Centre</h3></center>
                                    }q
			 
			 |
			 b "23" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.312, 103.839">
                                        </iframe>
                                        </center>
                                        <center><h3>Newton Circus Food Centre</h3></center>
                                    }q
			 |
			 b "24" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2923, 103.831">
                                        </iframe>
                                        </center>
                                        <center><h3>Zion Riverside Food Centre</h3></center>
                                    }q
			    |
			 b "25" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2923, 103.831">
                                        </iframe>
                                        </center>
                                        <center><h3>Zion Riverside Food Centre</h3></center>
                                    }q
			                        
			 |
			 b "26" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3162, 103.805">
                                        </iframe>
                                        </center>
                                        <center><h3>7 Empress Road Market and Food Centre</h3></center>
                                    }q
			 |
			 b "27" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2804, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>44 Holland Drive Market and Food Centre</h3></center>
                                    }q
			 |
			
			 b "28" same?     ->    	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3241, 103.814">
                                        </iframe>
                                        </center>
                                        <center><h3>Adam Road Food Centre</h3></center>
                                    }q
			 |
			 b "29" same?     ->  
			                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3241, 103.814">
                                        </iframe>
                                        </center>
                                        <center><h3>Adam Road Food Centre</h3></center>
                                    }q
			 
			 |
			 b "30" same?     -> 
			                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3241, 103.814">
                                        </iframe>
                                        </center>
                                        <center><h3>Adam Road Food Centre</h3></center>
                                    }q
			 |
		    
		     b "31" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3354, 103.857">
                                        </iframe>
                                        </center>
                                        <center><h3>Kim Keat Palm Market and Food Centre</h3></center>
                                    }q
		     |
			 b "32" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3231, 103.855">
                                        </iframe>
                                        </center>
                                        <center><h3>Whampoa Makan Place</h3></center>
                                    }q
			 |
			 b "33" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3192, 103.863">
                                        </iframe>
                                        </center>
                                        <center><h3>Bendemeer Market and Food Centre</h3></center>
                                    }q
			 |
			
			 b "34" same?     ->      
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3215, 103.87">
                                        </iframe>
                                        </center>
                                        <center><h3>Geylang Bahru Market and Food Centre</h3></center>
                                    }q
			 |
			 b "35" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3215, 103.87">
                                        </iframe>
                                        </center>
                                        <center><h3>Geylang Bahru Market and Food Centre</h3></center>
                                    }q
			 |
			 b "36" same?     ->   
			 
			                        q{ 
			                            <center><h3>79A Circuit Road Food Centre</h3></center>
			                           
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3266, 103.885">
                                        </iframe>
                                        <center>
                                        <center><h3>79A Circuit Road Food Centre</h3></center>
                                    }q
			 
			 |
			 b "37" same?     ->    
			                       q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3266, 103.885">
                                        </iframe>
                                        </center>
                                        <center><h3>79A Circuit Road Food Centre</h3></center>
                                    }q
			 
			 |
			 b "38" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.315, 103.871">
                                        </iframe>
                                        </center>
                                        <center><h3>17 Upper Boon Keng Road Market and Food Centre</h3></center>
                                    }q
			 |
			 b "39" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3082, 103.885">
                                        </iframe>
                                        </center>
                                        <center><h3>51 Old Airport Road Food Hawker Centre & Shopping Mall</h3></center>
                                    }q
			 |
			 b "40" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3167, 103.898">
                                        </iframe>
                                        </center>
                                        <center><h3>Geylang Serai Market</h3></center>
                                    }q
			 |
			 b "41" same?     ->  	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3203, 103.904">
                                        </iframe>
                                        </center>
                                        <center><h3>Eunos Crescent Market and Food Centre</h3></center>
                                    }q
			 |
			 b "42" same?     ->  	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3094, 103.901">
                                        </iframe>
                                        </center>
                                        <center><h3>Dunman Food Centre</h3></center>
                                    }q
			 |
			 b "43" same?     ->
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3151, 103.895">
                                        </iframe>
                                        </center>
                                        <center><h3>Haig Road Market & Food Centre</h3></center>
                                    }q
			 |
		     b "44" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3023, 103.906">
                                        </iframe>
                                        </center>
                                        <center><h3>84 Marine Parade Central Market and Food Centre</h3></center>
                                    }q
		     |
		     b "45" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3057, 103.915">
                                        </iframe>
                                        </center>
                                        <center><h3>50A Marine Terrace Market and Food Centre</h3></center>
                                    }q
		     |
		     b "46" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3205, 103.935">
                                        </iframe>
                                        </center>
                                        <center><h3>16 Bedok South Road Market and Food Centre</h3></center>
                                    }q
		     |
			 b "47" same?     ->      
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3328, 103.914">
                                        </iframe>
                                        </center>
                                        <center><h3>630 Bedok Reservoir Road Market and Food Centre</h3></center>
                                    }q
			 |
			 b "48" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3328, 103.914">
                                        </iframe>
                                        </center>
                                        <center><h3>630 Bedok Reservoir Road Market and Food Centre</h3></center>
                                    }q  
			                         
			 |
			 b "49" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3892, 103.988">
                                        </iframe>
                                        </center>
                                        <center><h3>The Changi Village Hawker Centre</h3></center>
                                    }q
			 |
			 b "50" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3892, 103.988">
                                        </iframe>
                                        </center>
                                        <center><h3>The Changi Village Hawker Centre</h3></center>
                                    }q
			                    |
			 b "51" same?     ->     
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3735, 103.951">
                                        </iframe>
                                        </center>
                                        <center><h3>Pasir Ris Central Hawker Centre</h3></center>
                                    }q
			 |
			 b "52" same?     ->     
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3454, 103.944">
                                        </iframe>
                                        </center>
                                        <center><h3>Tampines Street 11 Market and Food Centre</h3></center>
                                    }q
			 |
			 b "53" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3541, 103.890">
                                        </iframe>
                                        </center>
                                        <center><h3>Hainanese Village Centre</h3></center>
                                    }q
			 |
			 b "54" same?     ->    
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3754, 103.883">
                                        </iframe>
                                        </center>
                                        <center><h3>Ci Yuan Hawker Centre</h3></center>
                                    }q
			 |
			 b "55" same?     ->     	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3629, 103.866">
                                        </iframe>
                                        </center>
                                        <center><h3>Serangoon Garden Market</h3></center>
                                    }q
			 |
			 b "56" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3744, 103.839">
                                        </iframe>
                                        </center>
                                        <center><h3>Mayflower Market and Food Centre</h3></center>
                                    }q
			 |
			 b "57" same?     ->   
			 
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.352, 103.837">
                                        </iframe>
                                        </center>
                                        <center><h3>Shunfu Mart</h3></center>
                                    }q
			 |
			 b "58" same?     -> 
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3395, 103.776">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Timah Market</h3></center>
                                    }q
			 |
		     b "59" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3435, 103.737">
                                        </iframe>
                                        </center>
                                        <center><h3>Yuhua Village Market and Food Centre</h3></center>
                                    }q
		     |
			 b "60" same?     -> q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3435, 103.737">
                                        </iframe>
                                        </center>
                                        <center><h3>Yuhua Village Market and Food Centre</h3></center>
                                    }q
			 
			 |
		     b "61" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3347, 103.721">
                                        </iframe>
                                        </center>
                                        <center><h3>Taman Jurong Market & Food Centre</h3></center>
                                    }q
		      |
			
			 b "62" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3347, 103.721">
                                        </iframe>
                                        </center>
                                        <center><h3>Taman Jurong Market & Food Centre</h3></center>
                                    }q
                                    |
			 b "63" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3347, 103.721">
                                        </iframe>
                                        </center>
                                        <center><h3>Taman Jurong Market & Food Centre</h3></center>
                                    }q
                                    |
			 
			 b "64" same?     ->   
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3497, 103.718">
                                        </iframe>
                                        </center>
                                        <center><h3>505 Jurong West Street 52 Market and Food Centre</h3></center>
                                    }q
			 |
			 b "65" same?     -> 
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3452, 103.712">
                                        </iframe>
                                        </center>
                                        <center><h3>221A Boon Lay Place Market and Food Village</h3></center>
                                    }q
			 |
			 b "66" same?     ->  
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3452, 103.712">
                                        </iframe>
                                        </center>
                                        <center><h3>221A Boon Lay Place Market and Food Village</h3></center>
                                    }q
			 |
			
			 b "67" same?     ->     	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
			 |
			 b "68" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
                                    |
			 b "69" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
                                    |
			 b "70" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
                                    |
			 
			 b "71" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
                                    |
			 b "72" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3776, 103.772">
                                        </iframe>
                                        </center>
                                        <center><h3>Bukit Panjang Hawker Centre and Market</h3></center>
                                    }q
                                    |
			 
			 b "73" same?     -> 
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.4434, 103.777">
                                        </iframe>
                                        </center>
                                        <center><h3>20/21 Marsiling Lane Market and Food Centre</h3></center>
                                    }q
			 |
		     b "74" same?     -> 
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.4335, 103.779">
                                        </iframe>
                                        </center>
                                        <center><h3>Marsiling Mall Hawker Centre</h3></center>
                                    }q
		        |
		     
		     b "75" same?     ->    	
		                            q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.4314, 103.828">
                                        </iframe>
                                        </center>
                                        <center><h3>Chong Pang Market & Food Centre</h3></center>
                                    }q
		     |
			 b "76" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.4314, 103.828">
                                        </iframe>
                                        </center>
                                        <center><h3>Chong Pang Market & Food Centre</h3></center>
                                    }q
                                 |
			 
			 b "77" same?     ->   	
			                        q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.425, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>Yishun Park Hawker Centre</h3></center>
                                    }q
			 |
			 b "78" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.425, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>Yishun Park Hawker Centre</h3></center>
                                    }q
                                    |
			 b "79" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.425, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>Yishun Park Hawker Centre</h3></center>
                                    }q
                                    |
			 b "80" same?     ->  q{ 
			                           
			                            <center>
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.425, 103.844">
                                        </iframe>
                                        </center>
                                        <center><h3>Yishun Park Hawker Centre</h3></center>
                                    }q
                                    |
			 
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
            <br>
            <br>
            <center>Please close your browser, enable GPS and reload the chatbot.<center>
            <center> Check the FAQ <b>"Location Access"</b> for more details! </center>
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
       <center><p><span style="color:green"><b>Open.</b></span> Close at 9.30PM.</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-07, 79A Circuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/VVNWw9Y.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: chinese-about (  -- "s" )
  
    q{
      <center><h2><b>Soon Lee Lor Mee Stall</b></h2></center>
      <center>Started the stall since 1970s and used to start business from 7pm. The stall has now changed its operating hours to start from noon till late evening. You'll get to enjoy your Lor Mee during lunch now!</center>
      <br>
      <center><h3><b>Our Signatures </b> <h3></center>
      <center><h4> Lor Mee : $4/$5/$6 </h4></center>
      <br> 
      <img src="https://scontent.fsin9-1.fna.fbcdn.net/v/t31.18172-8/13662014_1137920029611379_4974224158625531259_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=9267fe&_nc_ohc=HOmuWasf6zoAX_0XdEW&_nc_ht=scontent.fsin9-1.fna&oh=7aa176b21774b5cf3b712a99a22137a6&oe=61D5FF67" width="330px"
            style="border-radius:6px; solid #AAA">
  
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
        <center><p><span style="color:green"><b>Open.</b></span> Close at 10PM.</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-13, 79A Circuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/RaK78jn.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: indian-about ( -- "s")
    q{
      <center><h2><b>Karuna's Kitchen</b></h2></center>
      <center>We serve delicious and afforable indian food! Come and try now!</center>
      <br>
      <center><p><h3>Our Signatures </b> </h3></center>
      <center><h4> Nasi Bryani : $4++ </h4></center>
      <br> 
      <img src="https://cdn.pixabay.com/photo/2017/09/09/12/09/india-2731817_1280.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 8PM .</p></center>
        <center><h5>Average serving time <b>NOW</b>: 20 mins </h5></center>
        <center>#01-27, 79A Circuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/rtdJdZ1.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: western-about ( -- "s")


    q{
      <center><h2><b>Do & Me</b></h2></center>
      <center> Old School Western Food that will satisfy your craving for western food if you are around the area</center>
      <br>
      <center><h3><b>Our Signatures </b> </h3></center>
      <center><h4> Chicken Cutlet : $5.50 </h4></center>
      <br> 
      <center><img src="https://eatbook.sg/wp-content/uploads/2018/07/Do-And-Me-Chicken-Cutlet.jpg" width="330px"
            style="border-radius:6px; solid #AAA"></center>
      <center><a href="https://eatbook.sg/do-and-me/">Image source</a></center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9.30PM .</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-96, 79A Circuit Road Food Center</center>
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

: halal-about ( -- "s")


    q{
      <center><h2><b>Rabia Muslim Food</b></h2></center>
      <center>Eatablished since 2017, we server delicious and afforable halal muslim food! Come and have a try!</center>
      <br>
      <center><h3><b>Our Signatures </b> </h3></center>
      <center><h4> Kway Teow Goreng : $3.50 </h4></center>
      <br> 
      <center><img src="http://thehalalfoodblog.com/wp-content/uploads/2018/01/Rabia-Muslim-Food-02-Kway-Teow-Goreng-1536x1024.jpg" width="330px"
            style="border-radius:6px; solid #AAA"></center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 8PM .</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-54, 79A Circuit Road Food Center</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span></center>
        
        <img src="https://i.imgur.com/nXssv9a.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: thai-about ( -- "s")


    q{
      <center><h2><b>Omar Thai Beef Noodles & Rice</b></h2></center>
      <center>A team of Husband and Wife with the love of Thai Food sharing their love of the cuisine to the masses.</center>
      <br>
      <center><h3><b>Our Signatures </b> </h3></center>
      <center><h4> Basil Chicken Rice: $5.50 </h4></center>
      <br> 
      <center><img src="https://scontent.fsin9-2.fna.fbcdn.net/v/t1.6435-9/154288800_252310169759353_4019650316504869584_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=Oceswuhuz8EAX_AdQ2-&_nc_ht=scontent.fsin9-2.fna&oh=5cec89ac0a0ca39b581f88ec119fd50e&oe=61D61747" width="330px"
            style="border-radius:6px; solid #AAA"></center>
    }q
;



\ -------------------------------------------------------------------------------------------

: like ( -- "s")
 feedback ctx{ fb }
  {{
       "Thank you for using HawkerFood Go Where. Please rate your experience using our platform!"
       
    }} randomize head ctx{ url }
  
  q{
      
        <h3 style="color:SlateBlue;"><b><center>#{url}</center></h3>
        <center><h3> #{fb} </h3></center>
     
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
            <center><a href="https://www.google.com/maps/search/?api=1&query=North Bridge Road Market & Food Centre" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/888/888856.png" alt="HTML tutorial" style="width:42px;height:42px;"></a></center>
            
            <center>#{area} #{avail}</center>
            
            <h6><div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div></h6>
      
       
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
   <center><p style="color:green"><b> >>> Operating <<< </b></p></center>
   }q
   
;

: south-food ( -- "s")
area ctx{ area }
availability ctx{ avail }
  "100082" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        
        <center><a href="https://www.google.com/maps/search/?api=1&query=100082" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/888/888856.png" alt="HTML tutorial" style="width:42px;height:42px;"></a></center>
        <center>#{area} #{avail}</center>
        <h6><div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div></h6>
    
    }q
  
;

: south-avail ( -- "s")
  q{
   The hawker center cleaning schedule as below:
   <br>
   Q4 6th December - 6th December 2021
   <br>
   <center><p style="color:green"><b> >>> Operating <<< </b></p></center>
   }q

;

: north-area ( -- "s")
 north-area ctx{ north }
 q{
 <center><p>Please pick the Hawker Center </p>
 #{north}</center>
 }q
;

: east-area ( -- "s")
east-area ctx{ east }
 q{
 <center><p>Please pick the Hawker Center </p>
 #{east}</center>
 }q
;

: north-east-area ( -- "s")
north-east-area ctx{ north-east }
 q{
 <center><p>Please pick the Hawker Center</p>

 #{north-east}</center>
 }q
;

: central-area ( -- "s")
    central-area ctx{ central }
 q{
 <center><p>Please pick the Hawker Center</p>
 #{central}</center>
 }q
;

: west-area ( -- "s")
west-area ctx{ west }
 q{
<center><p>Please pick the Hawker Center</p>
 #{west}</center>
 }q
;

: tiong-bahru-stalls ( -- "s")
  tiong-bahru-stalls ctx{ stalls }
  "168898" hawkers name@ ctx{ tiong }
  q{
    <center><b><i>#{tiong}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/x05lTye.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2847, 103.8324">
                                        </iframe>
   <p>Here are some stalls available here! Feel free to explore!</p> <br></center>
    <center>#{stalls} </center>
    }q
;

: tiong-bahru-chinese ( -- "s)
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
        <center><h3>Zhong Yu Yuan Wei Wanton Mee (忠于原味雲吞麵)</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#02-30, 30, Seng Poh Road</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/soonlee_sf.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: tiong-bahru-halal ( -- "s)
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
        <center><h3>Muhammad Shazain Faiha</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#02-46, 30, Seng Poh Road</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/soonlee_sf.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: maxwell-stalls ( -- "s")
  maxwell-stalls ctx{ stalls }
  "69184" hawkers name@ ctx{ maxwell }
  q{
    <center><b><i>#{maxwell}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/AI0LTKt.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2801, 103.8449">
                                        </iframe>
    Here are some stalls available here! Feel free to explore! <br></center>
    <center>#{stalls}</center>
    }q
;

: maxwell-chinese ( -- "s)
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
        <center><h3>Maxwell Fuzhou Oyster Cake</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-05, 1, Kadayanallur Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/OGffyvp.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;
: maxwell-indian ( -- "s)
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
        <center><h3>Famous Queens Briyani</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#01-12, 1, Kadayanallur Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/u0aacAg.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: maxwell-halal ( -- "s)
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
        <center><h3>Hajmeer Kwaja Muslim Food</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-103, 1, Kadayanallur Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/IC1YTwy.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: maxwell-thai ( -- "s)
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
        <center><h3>Sisaket Thai Food</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-85, 1, Kadayanallur Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/3xRRkD8.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: kovan-stalls ( -- "s")
  kovan-stalls ctx{ stalls }
  "530209" hawkers name@ ctx{ kovan }
  q{
    <center><b><i>#{kovan}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/8Ccqwry.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3591, 103.8861">
                                        </iframe>
    Here are some stalls available here! Feel free to explore! <br></center>
    <center>#{stalls}</center>
    }q
;

: kovan-chinese ( -- "s)
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
        <center><h3> Yi Shi Jia Wanton Mee</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-57, Blk 209 Hougang Street 21</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/XTWMVxB.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;
: kovan-snacks ( -- "s)
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
        <center><h3>Fatt Soon Kueh</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#01-17, Blk 209 Hougang Street 21</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/iOILGM4.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: kovan-halal ( -- "s)
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
        <center><h3>Hajjah Mariam Muslim Food</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-53, Blk 209 Hougang Street 21</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/WBWpjTi.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: chong-pang-stalls ( -- "s")
  chong-pang-stalls ctx{ stalls }
  "760104" hawkers name@ ctx{ chong-pang }
  q{
    <center><b><i>#{chong-pang}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/FT9fIOg.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.4318, 103.8284">
                                        </iframe></center>
    Here are some stalls available! Feel free to explore! <br>
    <center>#{stalls}</center>
    }q
;

: chong-pang-chinese ( -- "s)
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
        <center><h3>Tian Ji Shu Shi</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-141, 105 Yishun Ring Road</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/YWVAAnl.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: chong-pang-halal ( -- "s)
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
        <center><h3>Haji Ali Cooked Food</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-171, 105 Yishun Ring Road</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/X3XQzGz.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: chong-pang-dessert ( -- "s)
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
        <center><h3>Nonya Chendol</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-162, 105 Yishun Ring Road </center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/USDuLsR.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: circuit-road-stalls ( -- "s")
  circuit-road-stalls ctx{ stalls }
  "370079" hawkers name@ ctx{ circuit-road }
  q{
    <center><b><i>#{circuit-road}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
   <img src="https://i.imgur.com/FT9fIOg.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3264, 103.8851">
                                        </iframe>
    Here are some stalls available! Feel free to explore! <br></center>
    <center>#{stalls}</center>
    }q
;

: circuit-road-chinese ( -- "s)
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
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-07, Blk 79 Circuit Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/VVNWw9Y.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: circuit-road-indian ( -- "s)
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
        <center><h3>Nasi Briyani by Foodie Story</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#01-106, Blk 79A Circuit Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/OtQjIBV.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: circuit-road-halal ( -- "s)
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-96, Blk 79 Circuit Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://ewr1.vultrobjects.com/hawkerpedia/hawker-centre-manually/Blks%2079-79A%20Circuit%20Road%20-106%20stalls/soonlee_sf.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: circuit-road-thai ( -- "s)
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
        <center><h3>Omar’s Thai Beef Noodles and Rice</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-54, Blk 79 Circuit Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/nXssv9a.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: circuit-road-western ( -- "s)
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-27, Blk 79 Circuit Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/rtdJdZ1.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: golden-mile-stalls ( -- "s")
  golden-mile-stalls ctx{ stalls }
  "199583" hawkers name@ ctx{ golden-mile }
  q{
    <center><b><i>#{golden-mile}</i><b>
    <p>Status: <span style="color:green"><b>Open.</b></span></p>
    <img src="https://i.imgur.com/i2YkVSY.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3029, 103.8639">
                                        </iframe>
    Here are some stalls available! Feel free to explore! <br></center>
    <center>#{stalls}</center>
    }q
;

: golden-mile-chinese ( -- "s)
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
        <center><h3>91 Fried Kway Teow Mee </h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-91, 505 Beach Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/uYpPaAb.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;
: golden-mile-indian ( -- "s)
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
        <center><h3>The Vadai Shop</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#B1-32, 505 Beach Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/q2jAIVx.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: golden-mile-halal ( -- "s)
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
        <center><h3>Deen Tiga Rasa</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#B1-15/16, 505 Beach Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/xbEOYTc.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: golden-mile-thai ( -- "s)
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
        <center><h3>Pauline-Thai Food</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#01-94, 505 Beach Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/bAWr61h.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: golden-mile-turkish ( -- "s)
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
        <center><h3>Bosphorus Turkish Kebap</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#B1-28, 505 Beach Rd</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/00xRPcj.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
;

: hong-lim-stalls ( -- "s")
  hong-lim-stalls ctx{ stalls }
  "051531" hawkers name@ ctx{ hong-lim }
  q{
    <center><b><i>#{hong-lim}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/boWB0lg.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2853, 103.8459">
                                        </iframe>
    Here are some stalls available! Feel free to explore! <br></center>
    <center>#{stalls}</center>
  }q
;

: hong-lim-chinese ( -- "s)
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
        <center><h3>Tuck Kee (Ipoh) Sah Hor Fun</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#02-40, Blk 531A Upper Cross Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/CwryOcp.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;
: hong-lim-snacks ( -- "s)
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
        <center><h3>Hiong Kee Dumplings</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#02-37, Blk 531AUpper Cross Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/DMB5Gf2.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: hong-lim-halal ( -- "s)
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
        <center><h3>Dapur F.Faiz</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 10 mins </h5></center>
        <center>#02-51, Blk 531A Upper Cross Street</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/MBfLdCu.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: yuhua-stalls ( -- "s")
  yuhua-stalls ctx{ stalls }
  "600347" hawkers name@ ctx{ yuhua }
  q{
    <center><b><i>#{yuhua}</i><b>
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
    <img src="https://i.imgur.com/W5lfS3g.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3452, 103.7315">
                                        </iframe>
    Here are some stalls available! Feel free to explore! <br></center>
    <center>#{stalls}</center>
    }q
;

: yuhua-chinese ( -- "s)
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
        <center><h3>华兴肉骨茶</h3></center>
        <center><p><span style="color:red"><b>Closed.</b></span>Opens 7AM Sat</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-171, 347 Jurong East Ave 1</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/29jbVgG.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;
: yuhua-snacks ( -- "s)
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
        <center><h3>Delisnacks</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#01-219, 347 Jurong East Ave 1</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/ot0WQsl.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;



: bedok-stalls ( -- "s")
  bedok-stalls ctx{ stalls }
  "460216" hawkers name@ ctx{ bedok }
  q{
    <center><b><i>#{bedok}</i><b>
    <p> Status: <span style="color:red"><b>Close.</b></span> </p>
    <img src="https://i.imgur.com/SWPMvbr.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    <iframe width="330"
                                        height="150"
                                        style="border:0"
                                        loading="lazy"
                                        frameborder="0"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3274, 103.9333">
                                        </iframe>
    Here's are some of the stalls available here! Feel free to explore! <br></center>
    <center>#{stalls} </center>
    }q
;

: bedok-chinese ( -- "s)
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
        <center><h3>Joo Chiat Pork Ribs Prawn Noodle</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 8PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#01-04, Blk 216 Bedok Food Centre and Market</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/IL6TqhR.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: bedok-indian ( -- "s)
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
        <center><h3>Briyani Abi</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 8PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 8 mins </h5></center>
        <center>#01-16, Blk 216 Bedok Food Centre and Market</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/hESH5Cu.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;

: bedok-halal ( -- "s)
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
        <center><h3>Ah Boy Nasi Lemak</h3></center>
        <center><p><span style="color:green"><b>Open.</b></span> Closes 8PM</p></center>
        <center><h5>Average serving time<b>NOW</b>: 5 mins </h5></center>
        <center>#01-58, Blk 216 Bedok Food Centre and Market</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/nKtBe2I.jpg" width="330px"
            style="border-radius:6px;border:1px solid #AAA">
    
        </body>
        </html>
  }q
  
;


: east-food ( -- "s")
area ctx{ area }
  "521137" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        
        <center><a href="https://www.google.com/maps/search/?api=1&query=521137" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/888/888856.png" alt="HTML tutorial" style="width:42px;height:42px;"></a></center>
    
        <center>#{area}</center>
        <h6><div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div></h6>
    
    }q
;




: west-food ( -- "s")
area ctx{ area }
  "640505" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=640505" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/888/888856.png" alt="HTML tutorial" style="width:42px;height:42px;"></a></center>
        <center>#{area}</center>
        <h6><div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div></h6>
        
    }q
;


: north-food ( -- "s")
area ctx{ area }
  "731004" hawkers name@ ctx{ num }
  q{
        #{num} 
        <br>
        <center><a href="https://www.google.com/maps/search/?api=1&query=731004" target="_blank"><img src="https://cdn-icons-png.flaticon.com/512/888/888856.png" alt="HTML tutorial" style="width:42px;height:42px;"></a></center>

        <center>#{area}</center>
        <h6><div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div></h6>
        
        
    
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

Q: Feedback/Suggestions
A: ${ feedback-suggestions } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear feedback-key
--

room: feedback-key
Q: $_
A: Thank you for your feedback! I will try to improve base on your feedback! Cheers!  <center>${ "Return to Menu" button-highlighted }</center>
K: $clear
L: ${ last-question }
--
end-room


Q: List 
A: ${ search-food } 
K: $clear list-of-hawker
--

\ Q: $x.@postalcode
\ A: ${$x hawker}
\ --
\ Q: $x.@postalcode
\ A: ${$x search-location }
\ --
\ room: list-of-hawker

Q: Yuhua Market
A: ${ yuhua-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear yuhua-stalls-key
--
room: yuhua-stalls-key
Q: Chinese
A: ${ yuhua-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear yuhua-stalls-key
--

Q: Snacks
A: ${ yuhua-snacks } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear yuhua-stalls-key
--

Q: <
A: ${ yuhua-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear yuhua-stalls-key
--
end-room

Q: Hong Lim
A: ${ hong-lim-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear hong-lim-stalls-key
--
room: hong-lim-stalls-key
Q: Chinese
A: ${ hong-lim-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear hong-lim-stalls-key
--

Q: Snacks
A: ${ hong-lim-snacks } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear hong-lim-stalls-key
--

Q: Halal
A: ${ hong-lim-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear hong-lim-stalls-key
--

Q: <
A: ${ hong-lim-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear hong-lim-stalls-key
--
end-room

Q: Golden Mile Food Centre
A: ${ golden-mile-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--
room: golden-mile-stalls-key
Q: Chinese
A: ${ golden-mile-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--

Q: Indian
A: ${ golden-mile-indian } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--

Q: Halal
A: ${ golden-mile-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--

Q: Thai
A: ${ golden-mile-thai } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--

Q: Turkish
A: ${ golden-mile-turkish } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--

Q: <
A: ${ golden-mile-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear golden-mile-stalls-key
--
end-room

Q: Circuit Road Food
A: ${ circuit-road-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
room: circuit-road-stalls-key
Q: Chinese
A: ${ circuit-road-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
Q: Indian
A: ${ circuit-road-indian } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
Q: Halal
A: ${ circuit-road-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
Q: Thai
A: ${ circuit-road-thai } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
Q: Western
A: ${ circuit-road-western } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
Q: <
A: ${ circuit-road-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear circuit-road-stalls-key
--
end-room

Q: Chong Pang Market
A: ${ chong-pang-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear chong-pang-stalls-key
--
room: chong-pang-stalls-key
Q: Chinese
A: ${ chong-pang-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear chong-pang-stalls-key
--

Q: Halal
A: ${ chong-pang-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear chong-pang-stalls-key
--

Q: Dessert
A: ${ chong-pang-dessert } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear chong-pang-stalls-key
--

Q: <
A: ${ chong-pang-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear chong-pang-stalls-key
--
end-room


Q: Kovan Market
A: ${ kovan-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear kovan-stalls-key
--
room: kovan-stalls-key
Q: Chinese
A: ${ kovan-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear kovan-stalls-key
--

Q: Halal
A: ${ kovan-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear kovan-stalls-key
--

Q: Snacks
A: ${ kovan-Snacks } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear kovan-stalls-key
--

Q: <
A: ${ kovan-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear kovan-stalls-key
--
end-room

Q: Maxwell Market
A: ${ maxwell-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--
room: maxwell-stalls-key
Q: Chinese
A: ${ maxwell-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--

Q: Halal
A: ${ maxwell-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--

Q: Indian
A: ${ maxwell-indian } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--
Q: Thai
A: ${ maxwell-thai } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--

Q: <
A: ${ maxwell-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear maxwell-stalls-key
--
end-room

Q: Tiong Bahru Market
A: ${ tiong-bahru-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear tiong-bahru-stalls-key
--
room: tiong-bahru-stalls-key
Q: Chinese
A: ${ tiong-bahru-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear tiong-bahru-stalls-key
--

Q: Halal
A: ${ tiong-bahru-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear tiong-bahru-stalls-key
--

Q: <
A: ${ tiong-bahru-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear tiong-bahru-stalls-key
--

end-room



Q: Blk 216 Bedok Food
A: ${ bedok-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--
room: bedok-stalls-key
Q: Chinese
A: ${ bedok-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--
Q: Indian
A: ${ bedok-indian } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--

Q: Halal
A: ${ bedok-halal } <center> ${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--

Q: <
A: ${ bedok-stalls } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--

end-room



Q: North
A: ${ north-area }
\ K: $back status-north
--

\ Q: South
\ A: ${ south-food }
\ \ K: $back status-south
\ --

Q: North-East
A: ${ north-east-area } 
\ K: $back tour-date
--

Q: East
A: ${ east-area } 
\ K: $back tour-date
--

Q: West
A: ${ west-area }
\ K: $back status-west
--

Q: Central
A: ${ central-area }
\ K: $back status-central
--
\ end-room

Q: Tampines
A: ${ east-food } 
\ K: $back tour-date
--

Q: Nearby
A: ${ nearby-food } <center>${ "Return to Menu" button-highlighted }</center> ${ share-chatbot } 
--


Q: EAT
A: ${ what-to-eat }
K: $clear type-of-food
--

room: type-of-food
Q: chinese
A: ${ chinese }
K: $clear about-chinese 
--

Q: indian
A: ${ indian }
K: $clear about-indian
--

Q: western
A: ${ western }
K: $clear about-western
--

Q: halal
A: ${ halal }
K: $back about-halal
--

Q: thai
A: ${ thai }
K: $back about-thai
--

Q: Back
A: ${ what-to-eat }
K: $clear type-of-food
--

end-room

room: about-chinese

Q: About the stall
A: ${ chinese-about } <center>${"Back" button-highlighted }</center>
K: $clear 
--
end-room

room: about-indian
Q: About the stall
A: ${ indian-about } <center>${"Back" button-highlighted }</center>
K: $clear
--
end-room

room: about-western
Q: About the stall
A: ${ western-about } <center>${"Back" button-highlighted }</center>
K: $clear
--
end-room

room: about-halal
Q: About the stall
A: ${ halal-about } <center>${"Back" button-highlighted }</center>
K: $clear
--
end-room

room: about-thai
Q: About the stall
A: ${ thai-about } <center>${"Back" button-highlighted }</center>
K: $clear
--
end-room

Q: Back
A: ${ what-to-eat }
K: $clear type-of-food
--

\ Q: About the stall
\ A: ${ chinese-about } <center>${"Return to Menu" button-highlighted }</center>
\ K: $clear
\ --
\ end-room






Q: like
A: ${ like }
--

room: status-central
Q: Cleaning
A: ${ central-avail } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear list-of-hawker
--
end-room

room: status-south
Q: Cleaning
A: ${ south-avail } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear list-of-hawker
--
end-room

Q: $poor|$neutral|$good 
A: ${ thank-you-feedback } <center>${ "Return to Menu" button-highlighted }</center>
\ L: ${ thank-you-feedback }
--

Q: About Us
A: ${ about-us }
--

Q: FAQs
A: ${ faq }
--


Q: General
A: ${ general }
--

Q: Menu
A: ${ welcome }
--

Q: Location Access
A: ${ location-access }
--

Q: IOS
A: ${ ios } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: Android
A: ${ android } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: Fav
A: ${ fav-bus-stop@ button-normal }
--

Q: Add $x
B: $x fav-bus-stop! 
A: Alright! Added $x to your favourite :)
--

Q: Fun Facts
A: ${ fun-facts-menu } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: UNESCO 
A: ${ fun-facts-unesco } <center>${ "Return to Menu" button-highlighted }</center>
--


Q: Hygenic
A: ${ fun-facts-hygenic } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: Tray
A: ${ fun-facts-tray } <center>${ "Return to Menu" button-highlighted }</center>
--
Q: Healthier
A: ${ fun-facts-healthier } <center>${ "Return to Menu" button-highlighted }</center>
--
Q: History
A: ${ fun-facts-history } <center>${ "Return to Menu" button-highlighted }</center>
--



