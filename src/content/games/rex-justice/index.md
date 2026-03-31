+++
title = "Rex Justice"
date = 2024-09-19
description = "An over the top action game with independent limb control"

[extra]
thumbnail = "rex-justice"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/rexjusticesavestheworld"
external_icon = "itch"
+++
In this game you play as Rex Justice, on a mission to stop the world from ending.

Unfortunately I was unable to finish everything I wanted to have included in the game before the deadline, so the intended plot is largely missing. There are also unfinished elements such as the player animations and enemy variety.

# Technical Write-up
The primary technical hurdle involved in making this game was achieving the intended artstyle I was aiming for, namely trying to emulate the graphical output of the Wii with a lower texture resolution. To do this, I implemented an interlacing shader which is drawn over the game. Every frame, this shader's quad is set to the contents of the previous rendered frame, and only draws either it's even or odd rows of pixels, alternating every frame. I also added a setting to the game to control the intensity of this effect since it is highly opinionated, which adjusts the alpha of the fullscreen quad.

{{ article_image(name="interlacing.png", width=1000, height=1000, op="fit", description="An example screenshot with the interlacing filter at max intensity, where the player is walking toward the camera. Notice how every other simulated scanline is from the frame previous.")}}

Like some of my other projects, I also intentionally lowered the internal resolution to 640x480 with a scale factor of 2 to make the window appropriately sized on modern displays. I opted to *not* allow the player to configure the resolution settings, besides making the game window fullscreen. This was done to increase the speed I could develop UI for the game, since I had a limited amount of time to work on it, but also reinforces the artstyle since the game cannot be played at a modern resolution.

I am particularly proud of the UI design I did for this game, since I feel it is both very easy to navigate on controller and evocative of the time period and game genre I am trying to emulate, while still being original. The player can navigate up and down to select from top level categories, which when hovered reveal the menus inside them. These can be navigated into either by pressing the confirm button or simply by navigating right, and can be exited out of similarly. This solution would not work for more complicated UI requirements, since you might eventually run out of screen space and need to scroll the UI view but for this game it was a very good fit.

{{ article_image(name="main-menu.png", width=1000, height=1000, op="fit", description="An example of the UI, where the player cam move left and right to navigate into submenus which appear when hovering their parent menu.")}}

For the game's music, I used public domain and CC0 music from [the mod archive](https://modarchive.org), which is an incredible resource for sequenced music that I often use in my projects. This project was unique however, because I incorporated [this Godot extension](https://godotengine.org/asset-library/asset/841) which allows direct playback of common tracker formats instead of converting it first to a traditional audio file. This means that I was able to gain the size on disk savings from this format, which is how the game is able to be only 70MB on disk.

I also used pre-rendered video wherever possible, instead of in-engine cutscenes. This sped up the development time for the game since all cutscenes just have to play a video instead of running any logic themselves. This solution also matches the intended aesthetic, since FMV cutscenes were common on the Wii. To further add to this feeling, I intentionally added some lag on the last frame of the videos, to simulate the disk loading the data. This behaviour is inspired primarily by the Xenosaga trilogy, although other games exhibited it as well.
