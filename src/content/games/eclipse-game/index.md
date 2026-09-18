+++
title = "Eclipse Game"
date = 2026-09-13
description = "Explore the Saturnian system, and take photos of eclipses."

[extra]
thumbnail = "eclipse-game"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/eclipse-game"
external_icon = "itch"

video = "eclipse-game"
+++

This game was made for the "New Beginnings" game jam, hosted by the University of Alberta's Games Den. The game allows you to fly through the Saturnian system and take pictures of eclipses. The game jam was 48 hours long, but I was busy the weekend it happened and so made this game in one day. For that reason I chose to develop something in between a software toy and a game, where there isn't really a stated goal or a win state, and taking pictures of eclipses simply increments a score with no other effect.

The game features two camera modes, cyclable by pressing tab: an over-the-shoulder camera of the spacecraft and a camera with a fixed orientation. If I had more time to work on this game, I would have made the controls respect the orientation of the craft with the over-the-shoulder camera, because in the current game it's pretty disorienting to control.

{{ article_image(name="ingame-over-the-shoulder.png", width=800, height=800, op="fit", description="An ingame screenshot using the over-the-shoulder camera. Pitch/Yaw is relative to the Navball on the bottom right, not the current camera's roll.")}}

For this game, I wanted it to have some educational factor to it. To accomplish this, as well as to speed up development time, I used real textures of the celestial bodies provided by NASA. This means that the objects in game look the way they would in real life. These textures, while incredible that we have access to them at all, are relatively low-resolution for game assets, which gave rise to the artstyle I chose for the game.

{{ article_image(name="dione-editor.png", width=800, height=800, op="fit", description="An image of Dione in the editor, to illustrate the low texture resolution.")}}

I also paid attention to the ordering of moons from Saturn, and the speeds of their orbits. The system is wildly out of scale for gameplay reasons, but the moons are in the correct order of distance from Saturn, and complete their orbits in proportional times.

I decided to add Monoliths to what I decided were the interesting parts of the system. When approached, these monuments unlock and display the name of the feature they represent. This was also to add to the educational value of the game.

{{ article_image(name="odysseus-crater.png", width=800, height=800, op="fit", description="The monument placed on Tethys to signify the Odysseus Crater.")}}
