\
\ Copyright © 2021 Arnold Doray all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: Arnold Doray
\ @date: 26 Nov 2020
\

terra/chat
terra/chat/app
terra/chat/log
terra/chat/test

include ./topics/email.m
include ./topics/resources.m
include ./topics/uiux.m

include ./topics/bad-language.m

include ./topics/tips.m


\ Quiz 
include ./topics/quiz-helper.m
include ./topics/questions.m
include ./topics/quiz.m

\ Booking
include ./topics/booking.m

include ./topics/pyramid.m
include ./topics/discover.m
\ First page 
include ./topics/start.m


\ Undhandled questions.
include ./topics/unhandled.m


idk: I don't understand the question.

: test 
  \ NOTE: Add your questions to test here.
  % Quiz
  % Rambutan
  % Next Question
  % Lima
  % Next Question
;

: update-log 
  \ this name needs to match the name in publish:
  log: bot
;

: publish 
  
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: hawkerfoodgowhere
  
  \ What your bot says at first. 
  init: ${welcome}
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
  
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  \ background: https://live.staticflickr.com/4135/4915115384_ca7b1df603_b.jpg
  \ background: https://assets1.risnews.com/styles/content_sm/s3/2018-11/AI-20171012113039221.jpg?itok=oPpT7_5r
  \ background: #AA0B2D
  background: #D3D3D3
  
  \ Image of the avatar to use. 
  avatar: https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere_logo2.png?raw=true
  \ Optional border on avatar
  \ avatar-border: solid #AAA 5px
   avatar-border: none
  
  \ Google font to import.
  import-font: Open+Sans:wght@300
  \ Font to use in bubbles
  bubble-font: 'Open Sans', sans-serif
  \ Font Color & Background of bot bubble
  bubble-bot-color: #72745f
  bubble-bot-background: #F3F3F3
  \ Font Color & Background for user bubble
  bubble-user-color: #333
  bubble-user-background: #FFFFE0
  \ Other bubble properties
  \ bubble-border: solid blue 1px
  bubble-border: 0px
  bubble-radius: 16
  bubble-font-size: 14
  \ Max Width of bot bubble, in pixels
  bot-bubble-width: 340
  \ You can limit the number of responses displayed
  limit: 3
  
  \ Optional properties of the "send" button.
  \ Here's a sample from flaticon.com
  \ <div>Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
  \ send-button-image-url: https://www.flaticon.com/svg/static/icons/svg/3652/3652532.svg
  \ send-button-image-style: padding-left:10px;
  send-button-image-url: https://smojo.ai/play.png
  send-button-image-style: none
  

  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: hawkerfoodgowhere
  description: Discover the delicious hawker food in Singapore!
  \ thumbnail: https://cdn.pixabay.com/photo/2013/05/22/19/15/hathseput-mortuary-112741_1280.jpg
  thumbnail: https://github.com/VincentK16/NLBChatbot/blob/main/hawkerfoodgowhere_brand1.png?raw=true
  
;







