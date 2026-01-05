+++
title = "Night Rail"
date = 2024-03-14
description = "Navigate the rails as you make decisions to find treasure"

draft = false

[extra]
thumbnail = "night-rail"

external_site_name = "Itch"
external_link = "https://jesuisnuit.itch.io/night-rail"
+++
For this game I was a composer, and I didn't contribute heavily to the code of the project. You can listen to the song I composed [here](@/music/night-rail.md). That being said, I still did add one feature of my own, being the dynamic music present in the game. 

Throughout the game the music will change to reflect the current state of the player. Every instrument playing in the game is actually a separate audio source playing its own channel, which lets me freely change the song's mix during gameplay. This is accomplished through two internal tracking variables, ```goodness``` and ```energy```. Goodness is increased through taking good actions and avoiding bad actions, and the music will interpolate the volumes of two "good" instruments and two "bad" instruments depending on this variable. The energy variable represents the players current energy (basically their health) and is simmilarly used to interpolate the volumes of two high-energy and two low-energy instruments.

This system worked for the game jam, but it's not without drawbacks. Namely, since each track is not any less difficult to play than a full song I pay the performance cost of essentially having 8 music tracks playing at once. It also means I pay the cost of having 8 songs on disk, and in memory during runtime, all of which are severe limitations and only work in this game since the rest of it is very light. Since I composed this soing in a tracker (namely [Renoise](https://www.renoise.com/)), it would have been trivial to implement this instead by converting the VST instruments used into a soundbank and exporting the song as a MIDI file which used the soundbank. Had I done this, I could have saved almost all the size both on disk and in memory (it would be much smaller than even a single audio file!) and also had more freedom with regards to changing parts of the track other than volume. Outside of the context of a 48-hour game jam this is the approach I would have taken, but the time did not allow for it.
