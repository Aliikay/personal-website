+++
title = "There's No I In Rhythm"
date = 2020-11-12
description = "Beat enemies to the beat, together!"

draft = false

[extra]
thumbnail = "theres-no-i-in-rhythm"

external_site_name = "Itch"
external_link = "https://applepiesleth.itch.io/theres-no-i-in-rhythm"
external_icon = "itch"
+++
There's No I In Rhythm was made for the Let's Jam Together game jam, hosted by the University of Alberta games den. It's a high-score based rhythm game where enemies approach from the right, and you must press the keyboard key corresponding to their lane to attack them with a character. Since the game was made in 48 hours, there is only one song which speeds up over time until you eventually miss enough enemies and lose.

We found partway through development that a player could perform very well in the game by constantly attacking all the lanes by button mashing instead of timing attacks to the beat of the music. To prevent just mashing the lane buttons, we implemented a system where if you attack too early in a lane and miss an enemy, the enemies nearby will rush forward and attack quicker.

We also implemented a system where each time the player defeats an enemy they gain some mana, and once filling the mana bar they will heal some damage taken. We implemented the system like this instead of having each enemy heal the player by a small amount since we felt that would not be noticeable to the player, whereas filling a mana bar by a large amount per enemy gave more feedback to the player.
