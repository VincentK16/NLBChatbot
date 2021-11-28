\
\ Copyright © 2021 vincekok all rights reserved.
\
\ @author: vincekok
\ @date: 26 Nov 2021
\
\ A brief description of this program.
\

\ @: discover 
\ discover: Discover discover


\ Q: $discover
\ A: Welcome to discover Egypt. Check out this link for more info: https://www.earthtrekkers.com/egypt-travel-tips-and-advice/#:~:text=Be%20Prepared%20to%20Tip%E2%80%A6&text=When%20visiting%20tombs%20and%20temples,expected%20to%20give%20a%20tip.
\ --

: discover ( -- "s")
    more-facts ctx{ facts }
    
    {{
        img-1f
        img-1g
        img-1h
        img-1i
    }} randomize head ctx{ images }
    
    {{
       "Egypt is the land of Cleopatra and the Pharaos.  It's home to one of the oldest and ancient civilisation and ranked as the 29th largest country in the world."
        "Wonder through souqs, mosques, and palaces in the capital city of Cairo."
        "The 365-days a year calendar was invented by ancient Egyptians to predict the yearly floodings of the Nile River"
        "Egyptian Cotton has the reputation of being the best cotton in the world and is picked by hand and not by machine"
        "Arabic is the official language"
        "Every city had its own favourite god.  Ancient Egyptians believed in more than 2,000 deities! They had gods for everything, from dangers to chores! Each had different responsibilities and needed to be worshipped so that life could be kept in balance."
        "Egypt is full of wonders, ancient sites, cities, markets, museums, beaches, souks, fortresses, and oases.   The waters around egypt is also a great place for scuba diving."
    }} randomize head ctx{ url }
    
    
    q{  
       
        <h1><b>Discover Eygpt</b></h1>
        <h2>Interesting facts about Egypt</h2>
        <br></br>
        <h3 style="color:SlateBlue;"><b><center>#{url}</center></h3>
        <br></br>
        <img src=#{images} width="450px"
            style="border-radius:6px;border:1px solid #AAA">
            
        </p>
        <br></br>
        <center>#{facts}</center>
      
    }q
;

Q: Discover 
A: ${discover}
--

Q: Facts
A: ${discover}
--


