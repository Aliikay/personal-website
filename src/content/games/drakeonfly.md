+++
title = "Drakeonfly"
date = 2025-11-16
description = "A rail shooter made in Godot for the Games Den Hibernation Jam 2025."

[extra]
thumbnail = "drakeonfly.png"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/drakeonfly"
+++

Drakeonfly was made for the Hibernation Jam 2025, put on by the University of Alberta Games Den.

For this jam I wanted to try and push myself to make a rail shooter since I had a full week, and I think it paid off since this is the jam game I'm the most proud of.

# Technical Write-up
The central element of the game is the Level Path, which is just a Path3D node. I am able to place event objects on the path with a PathFollower3D node to control their exact position, and when the player crosses these events they trigger a signal on an event bus with a resource housing additional data for the event. I'm able to use this system for all events that happen as the player progresses through a level, such as spawning enemies, triggering radio chatter and ending the level.

The other interesting thing about this game is that the enemy spawners spawn a swarm object instead of individual enemies, and the swarm objects in turn spawn enemies, and are responsible for their spawning positions. This allows me to reuse enemies unchanged in different pre-authored enemy formations. I didn't end up getting to put this system to much use since the game only ended up having four different patterns, but it means the game is very extensible should I ever desire to add more content in the future.
