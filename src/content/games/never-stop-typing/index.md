+++
title = "Never Stop Typing"
date = 2025-04-11
description = "Type a word every 5 seconds, or you're fired!"

[extra]
thumbnail = "never-stop-typing"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/never-stop-typing"
external_icon = "itch"
video = "video"
+++
Never Stop Typing is a game where you work for Company LTD as a word farmer. Every 5 seconds, you must submit a new word, forever, and if you go over time you'll be fired. 

The list of words the game uses is from [this GitHub repo of English words.](https://github.com/dwyl/english-words). The game parses this list into a hashmap when starting the game, and uses the map to store whether each word has been used or not.

To assign scores to the words, I use the two competing systems of world length and time spent entering words. Each letter adds a flat 50 to the score total, and the time score starts at 500 and decreases to 0 at the moment you would lose. I tested the balance for these values and found that (for my typing speed at least) they were roughly equivalent, with word length slightly overpowering time loss. This encourages the player to submit longer words, but with string punishments for waiting to think of one. I did this to enhance the frantic feeling of the game since I don't want players to be able to easily farm lower length words for large amounts of points, particularly chains of words that naturally lead into each other such as the numbers.
