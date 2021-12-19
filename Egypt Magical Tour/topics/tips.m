\
\ Copyright © 2021 vincekok all rights reserved.
\
\ @author: vincekok
\ @date: 26 Nov 2021
\
\ A brief description of this program.
\

: tips ( -- "s")
    more-tips ctx{ tip }
    
    \ {{
    \    img-1a
    \    img-1b
    \    img-1c
    \    img-1d
    \    img-1e
    \ }} randomize head ctx{ images }
    
    {{
       "Bring water and umbrella out!" 
       "Checkout the local restaurants!" 
       "Becareful of your surrounding!" 
       "Dress standards are conservative, particularly for women. Wear modest clothes that cover your legs and upper arms."
       "Make sure your accommodation is insect-proof. Use insect repellent."
       "Violent crime can happen. Take extra care if you're a women and alone."
       "Don't leave valuables unsecured in your hotel room or unattended in a public place"
       "Don't swim in fresh water, including the Nile River, to avoid waterborne diseases such as bilharzia (schistosomiasis)."
    }} randomize head ctx{ url }
    
    
    q{  
       
        <h1><b>Here's one tips for your travel!</b></h2>
        <br></br>
        <h3><center>#{url}</h3>
        <br></br>
        <img src=https://cdn.pixabay.com/photo/2020/03/05/17/35/tips-4905013_1280.jpg width="450px"
            style="border-radius:6px;border:1px solid #AAA"></center>
            
        
        
        <center>#{tip}</center>
      
    }q
;

Q: Tips
A: ${tips}
--



