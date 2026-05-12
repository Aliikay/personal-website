+++
title = "Slipstream"
date = 2026-12-31
description = "An online multiplayer bubble racing game."

[extra]
thumbnail = "slipstream"
exposed_date = "Development Ongoing"

external_site_name = "Steam"
external_link = "https://store.steampowered.com/app/3602870/Slipstream/"
external_icon = "steam"
video = "trailer"
+++
Slipstream is a top-down racing game where you control a bubble. It's momentum based, so you click to eject a small bubble from yourself and get pushed in the opposite direction with no friction, until you bounce off of a wall. Each time you shoot off a part of yourself you shrink in size, and when you run into bubbles from other people you can absorb them into yourself to grow. We're still working on this game, but it started as a submission to the Global Game Jam 2025. I've been developing this game as part of [Daisy Chain Games](https://daisychaingames.ca/) as a Programmer and UI Designer. 

As UI designer, one of the main challenges I've faced working on Slipstream is the need for first-class support for both Keyboard + Mouse and Controller navigation. Since our game is playable with one button (shoot) and a single analogue input (aiming), it is playable equally well on either control scheme and we are unable to allow the UI to lean towards the player using one or the other. To accomplish this, I've tended towards using flat lists and modals to display information, since they offer a good tradeoff between allowing UI elements to remain equally sized for mouse users and maintaining a single clear focus point and intuitive navigation neighbours for controller.

{{ article_image(name="settings.png", width=1000, height=1000, op="fit", description="An image of the settings menu in Slipstream, implemented as a modal with a flat list of settings categories.")}}

Predictably, the hardest part of developing this game has been making the online multiplayer work consistently. For the game jam version we implemented delay based networking, with the server as the sole authority and players sending inputs rather than their own position, but this introduced input lag onto all clients equal to the round trip delay, which is not ideal for a fast-paced racing game. We wanted to avoid client-authoritative networking since we did not want to deal with cheating or ship a heavy anticheat system, so we instead implemented predicted networking (rollback). This made the implementation of online features much more difficult for us, but allows clients to play with perceptually no input lag while still keeping the server as sole authority over the game state, which reduces cheating. For more information, one of my teammates wrote a more in-depth article about our networking [on medium](https://medium.com/@alex.kumpula01/real-time-networking-in-slipstream-b11aebf76946).

Since the true game state lives only on the server, it is often the case (by design) that the clients are not aware of critical information, such as what lap they are on or how much time has elapsed since the start of the race. This isn't a problem for gameplay since the server will still simulate it correctly, but it does pose problems for the UI which needs to be able to display this information. We've had to be careful to have the server send relevant information to the clients to keep them up to date with the current state of the game.
