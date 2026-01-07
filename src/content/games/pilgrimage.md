+++
title = "Pilgrimage"
date = 2024-01-21
description = "Play as a contract photographer as you explore the island to find what your clients want"

draft = false

[extra]
thumbnail = "pilgrimage"

external_site_name = "Itch"
external_link = "https://alikay.itch.io/pilgrimage"
+++
Pilgrimage is a game where you play as a contract photographer exploring an island to take pictures of points of interest for clients. You are scored based on if your picture met the clients needs or not, and the game ends once you've taken all the pictures and gives you a final score. The game was made for the 2023 games den anthology game jam. This was my first game made in Godot, and I made it as a way to learn the engine after the Unity Runtime fee announcement in late 2023.

This is the game where I feel I first found my own personal artstyle. I had made low poly, low resolution games before (namely [Generate the Day](@/games/generate-the-day.md)) but that game's UI and presentation were substantially different to what I tend to do now. While I was working on [Love Crafters](@/games/love-crafters.md) and [Cosmurier](@/games/cosmurier.md) I was forced into the Nintendo DS's characteristic artstyle by technical limitations, but I found I actually enjoyed it's look and have preserved it in my future games.

# Technical Write-up
For this game I opted not to attempt an implementation of image recognition in order to score the player's photographs, since I had limited time to complete it. Instead, each required photograph has a preset position and allowable range of angles the photo may be taken from, and a configurable falloff if the photograph is taken outside of these angles. Along with this, I paid special attention to the photograph requests and environment design to ensure there was only one way to take the correct pictures, so as to not confuse a player why their picture didn't work despite it looking like it should have. 

This system worked well for the jam and while watching other people play I didn't witness any times where a player took a photograph that didn't count. That being said, I made the system more generous than would be expected and so a bad faith player may find ways to abuse the scoring. For example, since the sharks may be approached at any angle they are configured to accept any photograph angle and are scored only by distance to the centre of the object. This means that the player can easily take a photo where the sharks are not visible at all, and still receive full points. Additionally, since the cave is close to the surface in worldspace and may also be approached in a variety of angles, it is possible to stand in the right place and take a picture from the surface that is nonetheless rewarded a high score. I believe that these trade-offs were worth it in order to finish the game in the allotted time, but If I had more time to work on it adding proper image recognition to alleviate these problems would likely be what I spend it on.
