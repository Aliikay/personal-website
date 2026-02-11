+++
title = "Chromeostasis"
date = 2026-01-30
description = "An abstract, cube-based puzzle game about using reality projectors to reveal your path forward."

draft = false

[extra]
thumbnail = "chromeostasis"

external_site_name = "Itch"
external_link = "https://gerrinator.itch.io/chromeostasis"
external_icon = "itch"
video = "chromeostasis"
+++
Chromeostasis is a puzzle game where parts of the world can be either hidden or revealed by shining projectors at them. The game was made in 48 hours for the 2026 Global Game Jam, which had the theme of "mask". We were inspired by this theme to make a game where you use additive and subtractive projectors to mask various parts of the terrain.

We had many puzzle ideas for this game, but due to the strict time constraints we were forced to cut many of them from the game.

{{ article_image(name="subtractive.png", width=1000, height=1000, op="fit", description="This subtractive projector is hiding parts of the wall that it's pointed at.")}}

# Technical Write-up
We used Godot for this project so that we could make use of it's CSG (Constructive Solid Geometry) features for the terrain features. All the terrain is made up of CSG geometry, and the projectors have a pyramid in front of them with a CSG modifier object. We set up objects in the hierarchy to parent terrain to, so that any platform that should be hidden until revealed by a projector can be a CSG object as a child of the Revealable node. All subtractive terrain in the game has to first be revealed by an additive projector, which is why some levels feature unobtainable projectors.

{{ article_image(name="node-tree.png", width=400, height=400, op="fit", description="The node hierarchy used to determine how terrain is revealed.")}}

Using Godot's CSGs allows us to have the collision of revealed objects change as well as the visuals when a projector is shined on it, which better matches player expectation and allows us to make puzzles involving small parts of a large object. This was used most notably for the bridge levels and the stacked projectors level, which require partially collideable terrain.
