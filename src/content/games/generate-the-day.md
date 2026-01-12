+++
title = "Generate The Day"
date = 2022-11-07
description = "Play as a robot trying to restore power to their village"

draft = false

[extra]
thumbnail = "generate-the-day"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/generate-the-day"
external_icon = "itch"
+++
Generate the Day is a game where you play as a robot, in a village where all light has gone out. Your goal is to collect all the generator parts, and bring them back to the generator to restore power to the village. This game was made for the Games Den Quicker game jam, and was made in 48 hours.

I chose to implement tank controls for this game since most of the time the player will be walking in a straight line, and I found it easier to just let the player hold down forward rather than alternate holding a strafe key to emulate analogue movement.

# Technical Write-up
The way the pixel filter was achieved is that the game's viewport is a fullscreen quad low resolution render texture that the game's main camera renders to. This way, instead of downscaling the rendered image in a shader, the game is able to actually render at the low resolution internally, which speeds up rendering.

This game was my first attempt at making a 3D game in Unity, so the character controller is pretty underdeveloped. Gravity is only applied to the character while standing still, and is a linear movement down rather than having an acceleration, which was a quick fix to a collision problem that came up right before the submission deadline. If I had more time to work on the game this would be the main issue I try to resolve.
