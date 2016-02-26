---  
layout: post 
title: Create Your Own Menu Bar Time Tracking App with Doing and TextBar
author: Craig Eley 
date: 2015-12-06
tags: [time tracking, doing, textbar]
image: /images/radio-teal.jpg
---
Here’s a thing I’m learning about myself: I like my applications local. Don’t get me wrong—I use a handful of “services” that have great APIs, sync across multiple devices, and generally earn their $4.99/month price tags or whatever, but apps just feel better when they’re not a web wrapper. And when they are cheap or free.

So after messing around with nearly every time tracking app and service in the world, I realized that my favorite is the incredibly bare bones [`Doing`](http://brettterpstra.com/projects/doing/) by [Brett Terpstra](http://twitter.com/ttscoff).

Doing is a command-line tool with a massive amount of customization and power, but in essence you simply tell it what you’re doing and then you tell it when you’re done. You do that from Terminal, and it writes it to a plain text file. Simple.

![](http://d.pr/i/14yEI+)
*My doing file as viewed in [Sublime Text](http://www.sublimetext.com/3)*

The problem, though, is that it’s hard to get meaningful real-time feedback without keeping said text file open all day. Enter [TextBar](http://www.richsomerfield.com/apps/), an incredibly handy menu bar app that displays, you guessed it, arbitrary text in your menu bar. However, it can also show the output of scripts—and it can handle emoji.

So I created a script that reads from the doing file. If you’re not working on anything, it displays the “typing” speech bubble icon for encouragement. If you are working on something, it displays the name of the task, a clock emoji, and the amount of time you’ve been working. Like so:

![](http://d.pr/i/13CmF+)

Here’s the bash script that makes it all happen:

<script src="https://gist.github.com/craigeley/57d48dca08477d80ba94.js"></script>

You’ll need to a) change the path to your doing file on line 5, b) make the file executable, c) store it somewhere, and then d) point TextBar to it. I have it set to update every sixty seconds, since it only tracks down to the minute.

Let me how this works for you, or if you have any questions. And thanks to [Brett](http://twitter.com/ttscoff) and [Rich](http://twitter.com/richie5um) for the help and feedback—and for making great tools.