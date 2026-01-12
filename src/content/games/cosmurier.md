+++
title = "Cosmurier"
date = 2023-07-29
description = "A package delivery geography game for the Nintendo DS"

draft = false

[extra]
thumbnail = "cosmurier"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/cosmurier"
+++
Cosmurier was made in 48 hours for the games den wildcard game jam.

# Technical Write-up
The positions of objects in the game all use spherical coordinates, which get converted into Cartesian worldspace positions in the draw routine. This allows me to reason easier about game logic, like moving the packages into the planet over time since I only have to animate their radius distance inward over time. This does lead to some distortion of movement around the poles, which I ordinarily would have fixed either by rethinking the coordinate system or just restricting movement around the poles, but being a game jam I ran out of time to implement it.

The locations of the cities are from [this database of world cities](https://www.kaggle.com/datasets/juanmah/world-cities?resource=download). I wrote a python script to filter the dataset, primarily to find cities that have > 15 million population. The dataset also has the notion of administrative cities, and primary cities, to capture data about capital cities. I added a 2x multiplier to the population of admin cities and a 15x multiplier to primary cities, meaning capital cities are more likely to appear in the game even if they do not meet the 15 million population requirement.

Since this is a game build for the Nintendo DS, I used a combination of [NFLib](https://github.com/knightfox75/nds_nflib), which is build on-top of [libnds](https://github.com/devkitPro/libnds), and [NitroEngine](https://github.com/AntonioND/nitro-engine). NFLib was used for initialization and to handle all the 2D assets on the secondary screen, and the primary screen is run with NitroEngine in 3D mode. This setup was the same as the one I used for [Love Crafters](@/games/love-crafters.md), which was my earlier DS game. During gameplay the primary screen is the top screen, but to achieve the pre-rendered title and game over screens as well as the rotating earth on the title and game over screens, I swap the primary to be the bottom screen. To parse the assets into the Nintendo DS format, I used the script I had made for [Love Crafters](@/games/love-crafters.md) to convert various assets into their required formats, with some changes for the new assets.

Since the DS only has 4MB of ram, texture size was a serious limitation. Additionally, this memory is split up into different texture banks, where each texture must only reside in one bank. Because of this, I could not make the earth's surface texture any higher resolution as it takes up a complete texture bank on its own in its current form. The only way to achieve a higher resolution earth texture would have been to split the model up into hemispheres or quarter spheres and texture each one, but I did not have time to do this for the jam.
