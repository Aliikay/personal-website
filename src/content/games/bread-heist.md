+++
title = "Bread Heist"
date = 2021-04-19
description = "Play as John Dough as you rise through the floors of your former company, to steal their bread!"

draft = false

[extra]
thumbnail = "bread-heist"
 
external_site_name = "GitHub"
external_link = "https://juliepilz.github.io/StudioScrum/Releases/Gold/BreadHeist/Gold/index.html"
+++
Bread Heist is a stealth rhythm game where you sneak into a corporation to steal their dough, and engage in DDR like dance battles with various enemies. The game was made as a capstone project for the CMPUT 250 course at the University of Alberta, as a part of the game Dev Certificate program. I made it with 5 peers, where I worked as a programmer focusing on the rhythm battles and the enemy guards.

# Technical Write-up
The most difficult challenge making this game was the restriction of using RPG Maker, which was a course requirement. RPG maker is excellent for making RPG's, but we were straying far outside of it's expected use-case and had to struggle to make it work for us. 

The rhythm battles are a standalone RPG maker plugin written purely in JavaScript. They interact with RPG Maker only through collecting input, and placing images on the screen. RPG Maker exposes a 100 image buffer that is intended to be used mostly for key art, but we used it to display the cascading notes, particles, and health bars for the UI. This did impose a limitation that there was a maximum number of notes on-screen that we can support. In hindsight, this system would have been easier to implement if we instead integrated an existing JavaScript library for rendering images into RPG Maker, and then made the rhythm battles with that.
