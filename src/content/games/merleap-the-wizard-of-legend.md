+++
title = "Merleap - The Wizard of Legend"
date = 2024-11-03
description = "Survive as a magic frog in the post apocalypse!"

[extra]
thumbnail = "merleap-the-wizard-of-legend"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/the-wizard-of-legend"
external_icon = "itch"
+++
This was a game jam game made in 48 hours for the Games Den Quickening game jam. It's a bullet heaven where you play as the last frog with magic, in a post-apocalypse where the world has been taken over by machines.

# Technical Write-up
The main technical hurdle I had for this game was that I wanted it to be able to run on the web, but this genre of game relies on a high number of entities being spawned and despawned (both the players bullets as well as the enemies). For that reason I chose to implement an object pool for both. Enemies are just a Godot resource specifying their stats, sprite, and spawning cost (more on that later), and projectiles are a resource specifying their damage, speed, and homing characteristics. When an object would be "despawned", I just disable it's hitbox and visuals, and mark the slot as free. When a new object needs to be spawned in it's place I just set a free object's properties to the given resource, reset it's position and re-enable it. That way I can skip the costly process of removing and adding nodes to the Godot node tree, as well as extra memory allocations and deallocations. An initial pool of objects is spawned at the game's start, and should the pool be filled I can spawn a new pool slot through traditional instantiation and add it to the pool for reuse. Since this setup is similar to an ECS model, I could have implemented enemy and projectile logic as a system for improved performance, although I did not do that for this jam. This game unfortunately suffers from pretty bad performance characteristics around 300 seconds in, because I made the initial enemy pool too small and it gets filled up around then and has to resort to traditional spawning mechanics. It's also coincidentally around this point that Godot's physics starts becoming a serious bottleneck to the game's performance. In a full game project I would have fixed these issues, but I ran out of time to in the 48 hours. 

Another bug in this game is the was healing works. Currently in the game the heal spell exists, but is only accessible after the player has enough upgrades that it is the only upgrade left in the pool, since it can never be randomly selected and only exists as a fallback. I had intended for this spell to also be in the random pool, but ran out of time to implement it. This affects the game balance since damage is effectively permanent, which also negatively harms the shield spell since it's hard to justify it since each point of health the player has can only be lost once.

To handle enemy spawning, I added an enemy cost system. The enemies spawn in waves, where each wave has a certain budget it must spend on enemies which increases every wave. Waves will pick a random enemy they can afford, spawn it, and then decrease their budget by the cost of the wave. This was waves can be randomly determined, but still follow a pre-authored difficulty curve. For example, the reason tanks do not spawn immediately is because their cost is more than the starting budget a wave has to spawn enemies. Once the wave budget is equal to the cost of a tank they **may** spawn with a 33% chance, but this budget may also instead be spent on other enemies. Once more rounds have passed, the tank will be much more likely to spawn.
