+++
title = "Never Stop Typing"
date = 2025-04-11
description = "Type a word every 5 seconds, or you're fired!"

[extra]
thumbnail = "never-stop-typing"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/never-stop-typing"
external_icon = "itch"
+++
Never Stop Typing is a game where you work for Company LTD as a word farmer. Every 5 seconds, you must submit a new word, forever, and if you go over time you'll be fired. 

# Technical Write-up
The list of words the game uses is from [this GitHub repo of English words.](https://github.com/dwyl/english-words). The game parses this list into a hashmap when starting the game, and uses the map to store whether each word has been used or not.
