Redscreengame.com

The whole point is to try and understand the game while playing. If you are curious as to how I came up with the game logic please scroll to the bottom.


Idea for the game
-I wanted to create something that was fun/addicting, but also a challenge, so the directions are extremely vague with only a short video with me playing the game without sound. I used all the knowledge I've learned up to now to create a game with the what I know about rails and routes. It is very colorful and CSS driven, so its appealing to the eye. Since I have posted this on Github I will explain the game on the very bottom.


Feb 1, 2015
-Instead of removing the URL changed the URI pattern to a SecureRandom.hex(3) so each page would be a random string
-removed the /paths/ url as it wasn't needed in a url
-Added warning for elipesy due to flashing colors
-Added Admin Namespace

January 31, 2015
-Read up on URI's and URL's and their differences
-Trying to remove the url ex. (path/green, path/blue, path/win) so users can't cheat by typing in the url in the browser

January 29, 2015
-Implemented a sound feature, had problems with sounds playing only after they finished
-Cloned each sound file to play when hovered over rather than when they finished in javascript
-Added a Give up feature

January 28, 2015
-Removed hyper link on hover during the game, so users cannot hover over the boxes and cheat as to where to go

January 27, 2015
-Made Donation Button an External Page Link

January 24, 2015
-Added Donation Button

January 22, 2015
-Changed the asset pipeline causing Bootstrap to load correctly, working in both Chrome and Bootstrap
-Added a screencast of me playing on youtube
-Embedded in the directions
-![Screencast](http://i.imgur.com/jgHf5ya.png)

January 21, 2015
-Uploaded to Heroku
-Purchased a domain name redscreengame.com and linked to redscreengame.herokuapp.com
-CSS problems on Chrome and Bootstrap not loading, works in Safari

January 20, 2015
- Had problems with Bootstrap overriding very important CSS features
- Had to use !important CSS values and custom css for original CSS to override the Bootsrap

January 19, 2015
- Added a jQuery chatroom that did not refresh when posted

January 16, 2015
- Added Username to Devise controller

January 15, 2015
- Added migration to user table, included username
- Fixed associations and made highscores have a game_id rather than a game having a highscore_id
- Added Highscores page separating scores by difficulty with username as well
- Added Credits Page

January 14, 2015
- Fixed alignment of boxes in CSS
- Added funny messages
- Implemented an easier version
- Added jQuery feature to select between easy and hard, both each boolean values
- Added color columns in path

January 13, 2015
- Coded the logic down in ruby
- Learned how to use first-childs in CSS
- Game is pretty hard, implementing an easier version so people can understand the concept of the game
- Color coded all boxes setup paths within an array and shuffled each one when creating a game

January 12, 2015
- Conceptualizing how to approach the problem
- Building ER diagrams
- ![ER Diagram](http://i.imgur.com/UsRzvqn.png)

HOW TO PLAY/GAME LOGIC

The user starts and picks easy due to 0 knowledge of how to play.

![H2P](http://i.imgur.com/CzGeSWq.png)

Each box leads to a different screen. In this screen the green box leads to the green screen. The order of how to play is according to the order of the boxes, as You can see the order of the boxes is green, cyan, orange. One must follow that order of green screen, cyan screen, orange screen respectively to win the game.

![H2P1](http://i.imgur.com/MgxNiw7.png)

For example in the cyan screen, which we go to by clicking the correct boxes in the red screen -> green screen to get to the cyan screen. The orange box in the cyan screen may go back to the red screen, green screen, or the next screen which would be the orange screen.

The idea is to remember the order for example.

(greenbox @redscreen -> greenscreen,
orangebox @greenscreen -> cyanscreen,
cyanbox @cyanscreen -> orangescreen, etc.)

![H2P2](http://i.imgur.com/oboyfyT.png)

So if one guessed the wrong box in the cyanscreen and got back to the redscreen one can remember how to get back to cyan screen to keep guessing until they click the right one.

Good luck!











