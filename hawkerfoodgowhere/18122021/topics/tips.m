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

@: place west north east central north_east greeting food chinese_prawn 
place: Soon_Lee_Lor_Mee Karuna's_Kitchen Do_&_Me Rabia_Muslim_Food Omar_Thai_Beef_Noodles_&_Rice
west: Bukit Jurong West Jurong_West jurong_west jurong west pasir_panjang clementi west_coast
greeting: hello hi morning afternoon how_are_you hey yo
food: good Good Food food where eat what_to_eat Where what's What's recommendations recommendation best
chinese_prawn: prawn_noodles prawn_noodle noodle noodles fish_soup bak_chor_mee mee 

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
    
    
 
    
    q{  
        <img 
            src="https://i.imgur.com/ZFoaJW7.png"
            width="335px"
            style="border-radius:6px;border:1px solid #AAA"
            align="center"
        >
        <h2 align="center">HawkerFood Go Where Team</h2>
        <p align="center">
            We are a bunch of food lovers who enjoy hawkerfood and want to share the different Hawker food in Singapore with everyone. 
            </p>
            <center><p>We hope you will enjoy this food discovery journey with the use of <b>Bao Buddy</b>. </p></center>
            <center><h5>Follow our FB & Instagram page for more exciting updates!</h5></center>
            <center><a href="https://www.facebook.com/hawkerfoodgowhere/" target="_blank"><img src="https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere/fb.png?raw=true" style="width:42px;height:42px;"></a>
            <a href="https://www.instagram.com/hawkerfoodgowhere/" target="_blank"><img src="https://i.imgur.com/cMZWMOK.png" style="width:42px;height:42px;"></a></center>
       <p><i><center>Disclaimer: This is a Proof of Concept (POC) chatbot submitted as part of NLB X AI4IMPACT challenge 2021. </center></i></p>
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
        <center>Let's hop on & explore the wonderful hawker foods in Singapore!
        <br>
        <br>
        <p> &#128071; <b>Choose from the options below</b> &#128071; </p></center>
        
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
  <center>Click on each of these below to learn more about some fun facts of Singapore's Hawker Culture!</center>
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
  <center><h2>How do you know if the hawker stall you are buying from is hygienic? Check out the grade displayed on the stall! 
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
   <img src="https://i.imgur.com/nMPngTB.jpg" width="330px"
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
   <img src="https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_1280.jpg" width="330px"
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
        <center><h3>Click on the category to find out more!</h3></center>
        <center>#{buttons}</center>
   }q
;

: general ( -- "s")
   faq-buttons ctx{ buttons }
   
   q{ 
        <h3><center>Why is the suggested nearby Hawker Centre not nearby at all?</center></h3>
        <h5><center>The suggested nearby Hawker Centre is selected based on their registration with NEA (excluding Kopitiam / Coffee shops)</center></h5>
       
        <h5><center>Please feel free to give us your feedback if you think there's a nearer Hawker Centre to our selection. Simply leave ur feedback by clicking on the "Feedback/Suggestion" button. Much appreciated.</center></h5>
        <center>#{buttons}</center>
   }q
;

: location-access ( -- "s")
   
   os-buttons ctx{ os }
   q{ 
        <h3><center>How to turn on location access?</center></h3>
        <h5><center> Check out the guide for Android/iOS! </center></h5>
        <center>#{os}</center>
     
    
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

: how-to-use ( -- "s")

q{
    <iframe width="330" height="250" src="https://www.youtube.com/embed/XU0k2NWJfLQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
   
         <center><p> Come come! I am patiently waiting for your feedback so that I can serve you better. Type your feedback below! <p></center>

    
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
        <center>Select the area and I'll let you know which hawker centres there are!</center>
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
                                        <center>Famous stalls: Ah Liang Ipoh Hor Fun, Famous Crispy Fried Chicken from Golden Nur, Johnson Western Food</center>
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
                                        <center>Famous stalls: Hong Peng La Mian Xiao Long Bao, Poy Kee Yong Tau Foo, Zhen Zhu Fang Roasted Delights</center>
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
                                        <center>Famous stalls: Mazni's Family, Teo Heng Teochew Porridge, Grandma Ban Mee</center>
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
                                        <center>Famous stalls: Maxwell Fuzhou Oyster Cake, Tian Tian Hainanese Chicken Rice, Jin Hua Fish Soup</center>
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
                                        <center>Famous stalls: Traditional Hakka Rice, Mad Bros SG, Teochew Satay Bee Hoon</center>
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
                                        <center>Famous stalls: Hainanese Scissors Curry Rice, Hong Ji Mian Shi Jia, Qi Shi Nian Dai</center>
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
                                        <center>Famous stalls:Yusoff Haji Jalal Satay, Xin Fu Ji BBQ</center>
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
                                        <center>Famous stalls: Mohamadia (Indian Muslim Food), Hao Jie Cooked Food, The Meeting Place Seafood Barbeque</center>
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
                                        <center>Famous stalls: Heng Heng Boneless Duck Rice Noodle Kway Chap, Ji Xing Hainanese Curry Rice, Heng Li, Sheng Huat</center>
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
                                        <center>Famous stalls: Cheng Mei Shi's Lor Mee, Tanglin Halt Original Pancake</center>
                                        <center>Famous stalls: Guangzhou Mian Shi Wanton Noodle, No. 1 Western food, Piao Xiang Xiao Chi</center>
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
                                        <center>Famous stalls: Hua Kee Chicken Rice, Hong Seng Curry Rice, kway chap at Shi Le Yuan</center>
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
                                        <center>Famous stalls: Jian Bo Shui Kueh, Tiong Bahru Char Kway Teow, Tiong Bahru Lor Mee, Tiong Bahru Pau</center>
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
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.2887,103.8275">
                                        </iframe>
                                        </center>
                                        <center><h3>Beo Crescent Market</h3></center>
                                        <center>Famous stalls: Cantonese Claypot Rice, Chef Wang Fried Rice, Kim Kitchen Braised Duck</center>
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
                                        <center>Famous stalls: Bai Nian Niang Dou Fu, Siraj Famous Waterloo St Indian Rojak.</center>
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
                                        <center>Famous stalls: Lao Huang Hakka Niang Tou Fu, Koka Wanton Noodle, Ah Huat Prawn Noodles</center>
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
                                        <center>Famous stalls: Sheng Kee Curry Chicken Noodle, Mei Xiang Black & White Fish Soup, Hock Kee Fried Kway Teow</center>
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
                                        <center>Famous stalls: Lai Hiang Pork Rib Prawn Mee, Good Spice Carrot cake, Pin Wei Hong Kong Style Chee Cheong Fun</center>
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
                                        <center>Famous stalls: Heng, Bangkok Express, Soon Wah Fishball Kway Teow Mee</center>
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
                                        <center>Famous stalls: Heng, Bangkok Express, Soon Wah Fishball Kway Teow Mee</center>
                                        
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
                                        <center>Famous stalls: Lau Goh Teochew Chye Thow Kway, Zion Road Big Prawn Noodle, No. 18 Zion Road Fried Kway Teow</center>
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
                                        <center>Famous stalls: Lau Goh Teochew Chye Thow Kway, Zion Road Big Prawn Noodle, No. 18 Zion Road Fried Kway Teow</center>
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
                                        <center>Famous stalls: Happy World Delicacy, Soh Food Stewed Duck, Poh</center>
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
                                        <center>Famous stalls: Cheng Heng Kway Chap and Braised Duck Rice, Rojak Line, New Lucky Claypot Rice</center>
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
                                        <center>Famous stalls: Warong Pak Sapari, Adam Road Noo Cheng big prawn noodles, Adam’s delights</center>
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
                                        <center>Famous stalls: Warong Pak Sapari, Adam Road Noo Cheng big prawn noodles, Adam’s delights</center>
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
                                        <center>Famous stalls: Warong Pak Sapari, Adam Road Noo Cheng big prawn noodles, Adam’s delights</center>
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
                                        <center>Famous stalls: Old Long House Popiah, Hai Nan Xing Zhou Beef Noodle, Hainan Cuisine & Snacks</center>
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
                                        <center>Famous stalls: Best Lu Mian In Town, Yu Chu La Mian Xiao Long Bao, China Whampoa Home Made Noodle</center>
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
                                        <center>Famous stalls: Min Ji Laksa, Yu Chu La Mian Xiao Long Bao, Indonesia Curry Rice</center>
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
                                        <center>Famous stalls: Mei Ji Fishball Noodle, Fu Cheng Homemade Springroll & Springroll Skin, Hui Wei Chilli Ban Mian</center>
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
                                        <center>Famous stalls: Mei Ji Fishball Noodle, Fu Cheng Homemade Springroll & Springroll Skin, Hui Wei Chilli Ban Mian</center>
                                    }q
			 |
			 b "36" same?     ->   
			 
			                        q{ 
			                            
			                           
                                        <iframe width="300"
                                        height="250"
                                        style="border:0"
                                        loading="lazy"
                                        allowfullscreen
                                        src="https://www.google.com/maps/embed/v1/streetview?key=AIzaSyBVeycB8vbbBm7pNc04hDnI0s0wYpqoVn4&location=1.3266, 103.885">
                                        </iframe>
                                        <center>
                                        <center><h3>79A Circuit Road Food Centre</h3></center>
                                        <center>Famous stalls: Jeun VirtueFarm, Minister Rempeyek, Street Of Thai Foods</center>
                                        <center>${ "Chinese" button-normal } ${ "Indian" button-normal } ${ "Halal" button-normal } ${ "Western" button normal } ${ "Thai" button-normal}</center> 
                                    }q
			 
			 |
			 b "37" same?     ->    type-food ctx{ type }
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
                                        <center>Famous stalls: Jeun VirtueFarm, Minister Rempeyek, Street Of Thai Foods</center>
                                        <center>#{type}</center>
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
                                        <center>Famous stalls: HEYME, Ming Fa Fishball, Zao Dao Cooked Food</center>
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
                                        <center>Famous stalls: Xin Mei Xiang Zheng Zong Lor Mee, Unkai Japanese Cuisine, J. & J. Special Beef Noodle</center>
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
                                        <center>Famous stalls: Pak Din Ayam Bakar, Rojak & Mee Siam (A.H. Food Corner), Azizah Briyani</center>
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
                                        <center>Famous stalls: Eunos Famous Bak Chor Mee, Mami Midah Briyani, Anak Bapak</center>
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
                                        <center>Famous stalls: Lau Hong Ser Rojak, Sheng Xiang Kitchen, Dunman Road Char Siew Wan Ton Mee</center>
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
                                        <center>Famous stalls: Lin Yu Mei Sarawak Laksa & Kolo Mee, Haig Road Putu Piring, Hollywood Canteen Zheng Guang Wantan Noodles</center>
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
                                        <center>Famous stalls: Apollo Fresh Cockle Fried Kway Teow, Four Seasons Cendol, Kun Ji Duck Rice and Porridge</center>
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
                                        <center>Famous stalls: Rong Ji Wonton Mee, Minced Meat Porridge, Hui Cheow Teochew Kway Teow Mee Soup</center>
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
                                        <center>Famous stalls: Hung Kang Fish Soup, Hock Seng Choon Fishball Kway Teow Mee, Blue Lagoon Western Food</center>
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
                                        <center>Famous stalls: Amazing Braised Duck Rice, Cheng Fa Fried Kway Teow, Xiang Ji Chicken Rice</center>
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
                                        <center>Famous stalls: Amazing Braised Duck Rice, Cheng Fa Fried Kway Teow, Xiang Ji Chicken Rice</center>
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
                                        <center>Famous stalls: Mizzy Corner Nasi Lemak, Hock Gooi Hainanese Curry Rice, Da Zong Mei Shi</center>
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
                                        <center>Famous stalls: Mizzy Corner Nasi Lemak, Hock Gooi Hainanese Curry Rice, Da Zong Mei Shi</center>
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
                                        <center>Famous stalls: Prawnaholic, Daburu, Fins & Feathers</center>
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
                                        <center>Famous stalls: Rajarani Thosai, Yummy Sarawak Kolo Mee, Da Zong Mei Shi</center>
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
                                        <center>Famous stalls: Lorong Ah Soo Lor Mee, Wang Jiao Shu Shi, Yong Seng Teochew Fishball Mee</center>
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
                                        <center>Famous stalls: Hong Kong Chef's Kitchen, Putien Lor Mee, Yong HK Roasted Meat</center>
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
                                        <center>Famous stalls: Ah Eng Hor Fun, Hock Kee Fried Oyster, Bee Heng Prawn Noodles</center>
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
                                        <center>Famous stalls: Sri Ayam Penyet, Jin Song Famous Mushroom Chicken Feet Mee, Soon Heng Handmade Noodles</center>
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
                                        <center>Famous stalls: Liang Hai Nan Chicken Rice, Siaga Rasa, Marsiling Teochew Fish Soup</center>
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
                                        <center>Famous stalls: 168 Beef Hor Fun & White Bee Hoon with Clams, Terry Katong Laksa, Leng Kee Fish Soup</center>
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
                                        <center>Famous stalls: Heng Heng Cooked Food, West Coast Arifin, Our Porridge</center>
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
                                        <center>Famous stalls: Heng Heng Cooked Food, West Coast Arifin, Our Porridge</center>
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
                                        <center>Famous stalls: ButterNut, Nourishing Mini Hotpot, Rong Xing Hakka Yong Tau Fu</center>
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
                                        <center>Famous stalls: ButterNut, Nourishing Mini Hotpot, Rong Xing Hakka Yong Tau Fu</center>
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
                                        <center>Famous stalls: ButterNut, Nourishing Mini Hotpot, Rong Xing Hakka Yong Tau Fu</center>
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
                                        <center>Famous stalls: House of Prawn, Heng Heng Fish Soup, Handmade Mee Hoon Kway</center>
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
                                        <center>Famous stalls: Hui Ji Tian Tian Lai Fried Hokkien Prawn Mee, House of Hong Kong Soy Sauce Chicken, Boon Lay Fried Kway Teow Mee</center>
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
                                        <center>Famous stalls: Hui Ji Tian Tian Lai Fried Hokkien Prawn Mee, House of Hong Kong Soy Sauce Chicken, Boon Lay Fried Kway Teow Mee</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Yew Lee Wanton Mee, 169 May Fish Soup,  Father & Son’s Fried (Carrot Cake And Char Kway Teow)</center>
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
                                        <center>Famous stalls: Chin Heng Since 1962 Pork Rib Noodle, Xiang Yuan Wanton Noodle,  Yuan Chicken Rice</center>
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
                                        <center>Famous stalls: Ah Chen Lao Huo Tang, Ye Lai Xiang Laksa,  Beef King</center>
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
                                        <center>Famous stalls: Ho Heng Kway Chap, Tian Ji Shu Shi Prawn Noodle,  Nyonya Chendol</center>
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
                                        <center>Famous stalls: Ho Heng Kway Chap, Tian Ji Shu Shi Prawn Noodle,  Nyonya Chendol</center>
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
                                        <center>Famous stalls: Nasi Lemak Ayam Taliwang, Smokin' Joe Western BBQ,  Xin Long Xing</center>
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
                                        <center>Famous stalls: Nasi Lemak Ayam Taliwang, Smokin' Joe Western BBQ,  Xin Long Xing</center>
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
                                        <center>Famous stalls: Nasi Lemak Ayam Taliwang, Smokin' Joe Western BBQ,  Xin Long Xing</center>
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
                                        <center>Famous stalls: Nasi Lemak Ayam Taliwang, Smokin' Joe Western BBQ,  Xin Long Xing</center>
                                    }q
                                    |
			 
			 otherwise  	    "There's no nearby hawker centre. Try walk around!"   |.
			 
		
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
        <center><img src="https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80" width="330px"
            style="border-radius:6px;border:1px solid #AAA"> 
        Please select the type of food! </center>
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
      <img src="https://cdn.pixabay.com/photo/2016/05/10/02/46/lor-mee-1382959_1280.jpg" width="330px"
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
      <center><img src="https://cdn.pixabay.com/photo/2016/08/03/05/18/fried-1565908_1280.jpg" width="330px"
            style="border-radius:6px; solid #AAA"></center>
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
        
        <img src="https://i.imgur.com/f4k2maq.jpg" width="330px"
            style="border-radius:6px; solid #AAA">
        <center>#{more}</center>
        </body>
        </html>
    }q
;

: halal-about ( -- "s")


    q{
      <center><h2><b>Rabia Muslim Food</b></h2></center>
      <center>Eatablished since 2017, we serve delicious and affordable halal muslim food! Come and try!</center>
      <br>
      <center><h3><b>Our Signatures </b> </h3></center>
      <center><h4> Kway Teow Goreng : $3.50 </h4></center>
      <br> 
      <center><img src="https://cdn.pixabay.com/photo/2021/03/04/15/05/noodles-6068316_1280.png" width="330px"
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
      <center>A Husband and Wife team bringing their love of Thai Cuisine at affordable prices to you.</center>
      <br>
      <center><h3><b>Our Signatures </b> </h3></center>
      <center><h4> Basil Chicken Rice: $5.50 </h4></center>
      <br> 
      <center><img src="https://cdn.pixabay.com/photo/2016/07/20/00/49/thailand-food-1529442_1280.jpg" width="330px"
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
 <center><p>Please pick the Hawker Centre </p>
 #{north}</center>
 <center>I am currently working on gathering more information regarding hawker centres in the <b>Northen</b> region of Singapore in the list below.</center>
 <br>
 1. <a href="https://www.google.com/maps/search/?api=1&query=Sembawang Hills Food Centre" target="_blank" >Sembawang Hills Food Centre</a><br>
 2. <a href="https://www.google.com/maps/search/?api=1&query=20/21 Marsiling Lane Market and Food Centre" target="_blank" >20/21 Marsiling Lane Market and Food Centre </a><br>
 3. <a href="https://www.google.com/maps/search/?api=1&query=Kampung Admiralty Hawker Centre" target="_blank" >Kampung Admiralty Hawker Centre</a><br> 
 4. <a href="https://www.google.com/maps/search/?api=1&query=Marsiling Mall Hawker Centre" target="_blank" >Marsiling Mall Hawker Centre</a><br> 
 5. <a href="https://www.google.com/maps/search/?api=1&query=Yishun Park Hawker Centre" target="_blank" >Yishun Park Hawker Centre</a><br>
 <br>
 <center>Please check back. </center>
 <center><img src="https://cdn.pixabay.com/photo/2012/04/11/17/31/vegetables-29063_1280.png" width="330px"
            style="border-radius:6px; solid #AAA"></center>
 
 }q
;

: east-area ( -- "s")
east-area ctx{ east }
 q{
 <center><p>Please pick the Hawker Centre </p>
 #{east}</center>
 <center>I am currently working on gathering more information regarding hawker centers in the <b>Eastern</b> region of Singapore in the list below.</center>
 1. <a href="https://www.google.com/maps/search/?api=1&query=Kaki Bukit 511 Market and Food Centre" target="_blank" >Kaki Bukit 511 Market and Food Centre</a><br>
 2. <a href="https://www.google.com/maps/search/?api=1&query=538 Bedok North Street 3 Market and Food Centre" target="_blank" >538 Bedok North Market and Food Centre</a><br>
 3. <a href="https://www.google.com/maps/search/?api=1&query=58 New Upper Changi Road Market and Food Centre" target="_blank" >58 New Upper Changi Road Market & Food centre</a><br>
 4. <a href="https://www.google.com/maps/search/?api=1&query=Bedok Interchange Hawker Centre" target="_blank" >Bedok Interchange Hawker Centre</a><br>
 5. <a href="https://www.google.com/maps/search/?api=1&query=East Coast Lagoon Food Village" target="_blank" >East Coast Lagoon Food Village</a><br>
 6. <a href="https://www.google.com/maps/search/?api=1&query=Bedok Food Centre" target="_blank" >Bedok Food Centre</a><br>
 7. <a href="https://www.google.com/maps/search/?api=1&query=630 Bedok Reservoir Road Market and Food Centre" target="_blank" >Bedok Reservoir Food Centre</a><br>
 8. <a href="https://www.google.com/maps/search/?api=1&query=The Changi Village Hawker Centre" target="_blank" >The Changi Village Hawker Centre</a><br>
 9. <a href="https://www.google.com/maps/search/?api=1&query=Pasir Ris Central Hawker Centre" target="_blank" >Pasir Ris Central Hawker Centre</a><br>
 10.<a href="https://www.google.com/maps/search/?api=1&query=Tampines Street 11 Market and Food Centre" target="_blank" >Tampines Street 11 Market and Food Centre</a><br>
 <br>
 <center>Please check back. </center>
 <center><img src="https://cdn.pixabay.com/photo/2012/04/11/17/31/vegetables-29063_1280.png" width="330px"
            style="border-radius:6px; solid #AAA"></center>
 }q
;
1. 
: north-east-area ( -- "s")
north-east-area ctx{ north-east }
 q{
 <center><p>Please pick the Hawker Centre</p>

 #{north-east}</center>
 <center>I am currently working on gathering more information regarding hawker centres in the <b>North-Eastern</b> region of Singapore in the list below.</center>
 1. <a href="https://www.google.com/maps/search/?api=1&query=Hainanese Village Centre" target="_blank" >Hainanese Village Centre</a><br>
 2. <a href="https://www.google.com/maps/search/?api=1&query=Ci Yuan Hawker Centre" target="_blank" >Ci Yuan Hawker Centre</a><br>
 3. <a href="https://www.google.com/maps/search/?api=1&query=Serangoon Garden Market" target="_blank" >Serangoon Garden Market</a><br>
 4. <a href="https://www.google.com/maps/search/?api=1&query=Chomp Chomp Food Centre" target="_blank" >Chomp Chomp Food Centre</a><br>
 <br>
 <center>Please check back. </center>
 <center><img src="https://cdn.pixabay.com/photo/2012/04/11/17/31/vegetables-29063_1280.png" width="330px"
            style="border-radius:6px; solid #AAA"></center>
 
 }q
;

: central-area ( -- "s")
    central-area ctx{ central }
 q{
 <center><p>Please pick the Hawker Centre</p>
 #{central}</center>
 <center>I am currently working on gathering more information regardinging hawker centres in the <b>Central</b> region of Singapore in the list below.</center>
 <br>
 1. <a href="https://www.google.com/maps/search/?api=1&query=Market Street Interim Food Centre" target="_blank" >Market Street Interim Food Centre</a><br>
 2. <a href="https://www.google.com/maps/search/?api=1&query=People's Park Food Centre" target="_blank" >People's Park Food Centre</a><br>
 3. <a href="https://www.google.com/maps/search/?api=1&query=Chinatown Market" target="_blank" >Chinatown Market</a><br>
 4. <a href="https://www.google.com/maps/search/?api=1&query=Amoy Street Food Centre" target="_blank" >Amoy Street Food Centre</a><br>
 5. <a href="https://www.google.com/maps/search/?api=1&query=6 Tanjong Pagar Plaza Market and Food Centre" target="_blank" >6 Tanjong Pagar Plaza Market and Food Centre</a><br>
 6. <a href="https://www.google.com/maps/search/?api=1&query=159 Mei Chin Road Market and Food Centre" target="_blank" >159 Mei Chin Road Market and Food Centre</a><br>
 7. <a href="https://www.google.com/maps/search/?api=1&query=Tanglin Halt Food Centre" target="_blank" >Tanglin Halt Food Centre</a><br>
 8. <a href="https://www.google.com/maps/search/?api=1&query=Tanglin Halt Market" target="_blank" >Tanglin Halt Market</a><br>
 9. <a href="https://www.google.com/maps/search/?api=1&query=Commonwealth Crescent Market" target="_blank" >Commonwealth Crescent Market</a><br>
 10.<a href="https://www.google.com/maps/search/?api=1&query=ABC Brickworks Market & Food Centre" target="_blank" >ABC Brickworks Market & Food Centre</a><br>
 <br>
 <center>Please check back. </center>
 <center><img src="https://cdn.pixabay.com/photo/2012/04/11/17/31/vegetables-29063_1280.png" width="330px"
            style="border-radius:6px; solid #AAA"></center>
 }q
;

: west-area ( -- "s")
west-area ctx{ west }
 q{
<center><p>Please pick the Hawker Centre</p>
 #{west}</center>
 <center>I am currently working on gathering more information regarding hawker centres in the <b>Western</b> region of Singapore in the list below.</center>
 <br>
 1. <a href="https://www.google.com/maps/search/?api=1&query=Pasir Panjang Food Centre" target="_blank" >Pasir Panjang Food Centre</a><br>
 2. <a href="https://www.google.com/maps/search/?api=1&query=353 Clementi Ave 2 Market/Cooked Food Centre" target="_blank" >353 Clementi Ave 2 Market/Cooked Food Centre</a><br>
 3. <a href="https://www.google.com/maps/search/?api=1&query=448 Clementi Ave 3 Market and Food Centre" target="_blank" >448 Clementi Ave 3 Market and Food Centre</a><br>
 4. <a href="https://www.google.com/maps/search/?api=1&query=West Coast Drive Market Centre" target="_blank" >West Coast Drive Market Centre</a><br>
 5. <a href="https://www.google.com/maps/search/?api=1&query=Ayer Rajah Food Centre" target="_blank" >Ayer Rajah Food Centre</a><br>
 6. <a href="https://www.google.com/maps/search/?api=1&query=West Coast Market Square" target="_blank" >West Coast Market Square</a><br>
 <br>
 <center>Please check back. </center>
 <center><img src="https://cdn.pixabay.com/photo/2012/04/11/17/31/vegetables-29063_1280.png" width="330px"
            style="border-radius:6px; solid #AAA"></center>
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
   <p>Here are some stalls available here! Feel free to explore!</p> <br>
    #{stalls} </center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
        <center><h5>Average serving time <b>NOW</b>: 5 mins </h5></center>
        <center>#02-30, 30, Seng Poh Road</center>
        <center><p>Star Rating</p>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star checked"></span>
        <span class="fa fa-star"></span></center>
        
        <img src="https://i.imgur.com/fA34WdJ.jpg" width="330px"
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
        
        <img src="https://i.imgur.com/1X3El46.jpg" width="330px"
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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

\ : kovan-reviews ( --"s")
\   slider-reviews ctx{ rev }
\ q{
\     #{rev}
\     }q
\ ;



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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
    <center>Here are some stalls available! Feel free to explore!<br></center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
   <img src="https://i.imgur.com/xSeLWIO.jpg" width="330px"
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
        
        <img src="https://i.imgur.com/f4k2maq.jpg" width="330px"
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
        <center><p><span style="color:green"><b>Open.</b></span> Closes 9PM</p></center>
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
    <p> Status: <span style="color:green"><b>Open.</b></span> </p>
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



: trending-news-1
 q{
        <center><h3>Trending News</h3></center>
        <center><a href="https://www.channelnewsasia.com/singapore/s100-cdc-voucher-digital-how-claim-online-singapore-household-2376336" style="background-color: #F5F5DC;" target="_blank">FAQ: S$100 worth of CDC vouchers<img src="https://i.imgur.com/i2YkVSY.jpg" alt="HTML tutorial" width="330px"
            style="border-radius:6px;border:1px solid #AAA"
            align="center"></a></center>
 
 }q
;

: trending-news-2
q{
        <center><h3>Trending News</h3></center>
        <center><a href="https://www.straitstimes.com/singapore/consumer/7-hawker-centres-to-be-added-to-dbs-group-buy-scheme-to-boost-income-of-pandemic" style="background-color: #F5F5DC;" target="_blank">7 hawker centres to be added to DBS group-buy scheme<img src="https://cdn.pixabay.com/photo/2020/03/18/20/01/frankfurt-4945405_1280.jpg" alt="HTML tutorial" width="330px"
            style="border-radius:6px;border:1px solid #AAA"
            align="center"></a></center>

 }q
;

: cdc-vouchers ( -- "s")
nearby-hawker-menu ctx{ menu }
    q{
    <center><h3> CDC Vouchers</h3></center>
    <center><p>These CDC vouchers can be used at participating heartland merchants and hawkers. Look out for the CDC Vouchers decal displayed at the merchant/hawker stall shopfront to know where the vouchers can be used at, and also take this opportunity to explore and get to know your neighbourhood.<p></center>
    <center>Visit CDC website for more info!</center>
    <center><a href="https://vouchers.cdc.gov.sg/residents/faq" target="_blank"><img src="https://cdn.pixabay.com/photo/2016/10/26/17/32/click-here-1772025_1280.jpg" width="335px"
            style="border-radius:6px; solid #AAA"></a></center>
          
           <center> #{menu} </center>
    }q
;

Q: Feedback/Suggestions
A: ${ feedback-suggestions } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear feedback-key
--


Q: Trending 
A: ${ trending-news-1 } <center>${ "More News" button-normal} ${ "Return to Menu" button-highlighted }</center>
K: $clear more-news
--

room: more-news
Q: More News
A: ${ trending-news-2 } <center>${ "More News" button-normal} ${ "Return to Menu" button-highlighted }</center>
K: $clear no-more-news
--

Q: Return to Menu 
A: ${ welcome } 
K: $clear
--
end-room

room: no-more-news
Q: $_
MM <center><h4>No more news for now, check back later!</h4></center>
MM ${ welcome } 
M. 
K: $clear 
--
end-room
\ 
\ Q: Reviews
\ A: ${ kovan-reviews }
\ --

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

Q: $greeting
A: ${ welcome }
--

Q: North
A: ${ north-area } <center>${ "Return to Menu" button-highlighted }</center>
\ K: $back status-north
--

\ Q: South
\ A: ${ south-food }
\ \ K: $back status-south
\ --

Q: North-East
A: ${ north-east-area } <center>${ "Return to Menu" button-highlighted }</center>
\ K: $back tour-date
--

Q: East
A: ${ east-area }  <center>${ "Return to Menu" button-highlighted }</center>
\ K: $back tour-date 
--

Q: $west
A: ${ west-area } <center>${ "Return to Menu" button-highlighted }</center>
\ K: $back status-west
--

Q: Central
A: ${ central-area } <center>${ "Return to Menu" button-highlighted }</center>
\ K: $back status-central
--
\ end-room

Q: Tampines
A: ${ east-food } 
\ K: $back tour-date
--

Q: Nearby
A: ${ nearby-food } <center>${ "Return to Menu" button-highlighted }</center> ${ share-chatbot } 
K: $clear type-of-food
--


Q: EAT
A: ${ what-to-eat } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear type-of-food
--

room: type-of-food
Q: chinese
A: ${ chinese } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear about-chinese 
--

Q: indian
A: ${ indian } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear about-indian
--

Q: western
A: ${ western } <center>${ "Return to Menu" button-highlighted }</center>
K: $clear about-western
--

Q: halal
A: ${ halal } <center>${ "Return to Menu" button-highlighted }</center>
K: $back about-halal
--

Q: thai
A: ${ thai } <center>${ "Return to Menu" button-highlighted }</center>
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

\ Q: $poor|$neutral|$good 
\ A: ${ thank-you-feedback } <center>${ "Return to Menu" button-highlighted }</center>
\ \ L: ${ thank-you-feedback }
\ --

Q: About Us
A: ${ about-us }
--

Q: FAQs
A: ${ faq } <center>${ "Return to Menu" button-highlighted }</center>
--


Q: General
A: ${ general } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: Menu
A: ${ welcome } 
--

Q: Location Access
A: ${ location-access } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: IOS
A: ${ ios } <center>${ "Return to Menu" button-highlighted }</center>
--

Q: Android
A: ${ android } <center>${ "Return to Menu" button-highlighted }</center>
--
Q: How to Use
A: ${ how-to-use } <br><center>${ "Return to Menu" button-highlighted }</center>
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


Q: Hygiene
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
\ Q: $greeting
\ MM Hello! What do you feel like eating today?
\ MM ${ what-to-eat }
\ M. 
\ --

Q: $chinese_prawn
A: ${ bedok-chinese } <center>${ "<" button-normal } ${ "Return to Menu" button-highlighted }</center>
K: $clear bedok-stalls-key
--

Q: $food
A: ${ what-to-eat }
K: $clear type-of-food
--

Q: CDC Vouchers
A: ${ cdc-vouchers }
--









