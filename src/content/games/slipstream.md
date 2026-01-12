+++
title = "Slipstream"
date = 2026-12-31
description = "An online multiplayer bubble racing game."

[extra]
thumbnail = "slipstream"

external_site_name = "Steam"
external_link = "https://store.steampowered.com/app/3602870/Slipstream/"
+++
Slipstream is a top-down racing game where you control a bubble. It's momentum based, so you click to eject a small bubble from yourself and get pushed in the opposite direction with no friction, until you bounce off of a wall.Each time you shoot off a part of yourself you shrink in size, and when you run into bubbles from other people you can absorb them into yourself to grow. We're still working on this game, but it started as a submission to the Global Game Jam 2025. I've been developing this game as part of [Daisy Chain Games](https://daisychaingames.ca/) as a Programmer and UI Designer. 

# Technical Write-up
Predictably, the hardest part of developing this game has been making the online multiplayer work consistently. For the game jam version we implemented delay based networking, with the server as the sole authority and players sending inputs rather than their own position, but this introduced input lag onto all clients equal to the round trip delay, which is not ideal for a fast-paced racing game. We wanted to avoid client-authoritative networking since we did not want to deal with cheating or ship a heavy anticheat system, so we instead implemented predicted networking (rollback). This made the implementation of online features much more difficult for us, but allows clients to play with perceptually no input lag while still keeping the server as sole authority over the game state, meaning no one (but the server host) can cheat at the game. For more information, one of my teammates wrote a more in-depth article about our networking [on medium](https://medium.com/@alex.kumpula01/real-time-networking-in-slipstream-b11aebf76946).
