+++
title = "So Long Gay Bowser"
date = 2025-02-28
description = "A narrative Romhack for Super Mario 64"

draft = false

[extra]
thumbnail = "so-long-gay-bowser"

external_site_name = "romhacking.com"
external_link = "https://romhacking.com/hack/so-long--gay-bowser"
external_icon = "rhdc"
+++
So Long Gay Bowser is a narrative romhack for Super Mario 64, where the player has to navigate three simple platforming levels that take place in Mario's memories of time he spent with Bowser, before Bowser has to move to another country.

# Technical Write-up
This romhack is based on the excellent [Hacker64](https://github.com/HackerN64/HackerSM64) library, which is a fork of the Super Mario 64 decompilation project with a number of quality of life features added. The 3D models were added to the game using [fast64](https://github.com/Fast-64/fast64/), a blender plugin that adds support for Mario 64 materials and exporting models to C source files used in the decompilation.

This was not my first time experimenting with making a romhack for Mario 64, but it was the first full one I released and has some oddities with how it works. The bowser that you talk to throughout the game is a model-swapped Pink Bob-omb with the dialogue changed. I'm still not exactly sure why, but doing it this way made the Bowser model fail to load (even though other models did?) when selected as the actor model, so I had to model my own Bowser to replace the bob-omb. I took this opportunity to change bowser's appearance to be less menacing, so I think it was worthwhile.
