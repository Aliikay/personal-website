+++
title = "Love Crafters"
date = 2023-06-01
description = "A virtual pet game where you take care of monsters for the Nintendo DS"

draft = false

[extra]
thumbnail = "love-crafters"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/love-crafters"
external_icon = "itch"
+++
Love Crafters is a game made for the Nintendo DS. It was made for the Games Den Anthology Jam, which took place over 3 months from March 2023 to May 2023.

I had planned for the game to feature more content, but I ran out of time near the deadline and so only was able to finish implementing one type of pet and one minigame.

# Technical Write-up
This game was made with a combination of [NFLib](https://github.com/knightfox75/nds_nflib), which is build on-top of [libnds](https://github.com/devkitPro/libnds), and [NitroEngine](https://github.com/AntonioND/nitro-engine). NFLib was used for initialization and to handle all the 2D assets on the secondary screen, and the primary screen is run with NitroEngine in 3D mode.

Despite using C libraries, I opted to write this game in C++ to allow for the use of inheritance to represent game scenes. Each scene inherits from a generic scene class, which has its update and draw methods called once per frame. This was made to emulate the semantics of higher level game engines and sped up development.

Since these libraries require specific formats for assets, I wrote a script that I run as part of the build process that converts all of the assets in the game to the required formats. This lets me place conventional assets in folders and still build the game with the specialized formats required by each library.

The music in the game is all from [the Mod Archive](https://modarchive.org), which hosts a collection of music made with tracker software, with licensing information for each song. This was a required resource for this project, since the Nintendo DS has severe restrictions on playing streamed audio, bit I ended up enjoying the music collection and went on to use it in other projects in the future where it was not required.
