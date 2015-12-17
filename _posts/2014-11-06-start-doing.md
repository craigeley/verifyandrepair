---  
layout: post 
title: Choose to Start Doing, aka, Tracking Your Work Time
author: Craig Eley 
date: 2014-11-06
tags: 
- logging
- workflow
image: /images/radio-teal.jpg
---

In the many hours I've spent trying to [log and capture various aspects of my life](http://craigeley.com/tagged/logging/), I've found that straight-up time tracking can be one of the hardest to get right. It's easy to see how many hours a week I am physically at my office—[for example](http://d.pr/i/1dAyN)—but it's much less easy to track how productive those hours have actually been. It's great to use an auto-tracking service like [Rescue Time](https://www.rescuetime.com/), but even that is good only up to a point: sometimes I'm legitimately using Twitter and Facebook for work, and other times I'm not.

Ultimately, the best way to track my time spent at work is to do it myself, which is much less sexy and fun than doing it with cool automation and services. But I have found two tools recently which have made it pretty pleasurable: the very literally named `doing` and `choose`. Here's how they work, and how they can nicely work together with Apple's Reminders.

### Doing
[`Doing`](https://github.com/ttscoff/doing/) is a command line tool from [Brett Terpstra](http://brettterpstra.com/) (who else?) that acts as a work log. Essentially, you just type what you are doing into Terminal when you start a task, and then again when it's over. If you don't have the Terminal open all day (I certainly don't), then you can use [this Alfred workflow](http://www.evanlovely.com/blog/technology/alfred-for-terpstras-doing/). By far the best feature is the option for `--totals`, which will print how long you have spent on projects or categories (entered as "@tags") over any given amount of time. The feature set is extensive for such a small tool, and it's worth reading the full documentation.


### Choosing
Though `doing` doesn't directly integrate with any services out of the box, the fact that is a plain-text command-line tool means you can pretty much do anything you want with it. Over the last few weeks, I've found that I use it more reliably when it links directly with my to-do list items. I use Apple's Reminders, which for my money (none!) and my workflow (OS X) is still the easiest solution for tasks. To get things flowing smoothly, I created an Applescript that will find your uncompleted Reminders and write them to a text file, with each item's list appended as a @tag. Here's the script:[^141142255]

	tell application "Reminders"
		set output to ""
		repeat with i from 1 to (count of (reminders whose completed is false))
			set theReminder to reminder i of (reminders whose completed is false)
			set reminderName to name of theReminder
			set theList to name of container of theReminder
			set output to output & reminderName & " @" & theList & linefeed
		end repeat
		do shell script "echo " & quoted form of output & " > /Users/path/to/Reminders.txt"
	end tell

Now, the real fun comes in when you hook this into Alfred and use the [`choosing` CLI](http://tinyrobotsoftware.com/choose/). Once you install that into `usr/bin`, you can pipe into it. Using Alfred workflows and some really simple scripting, you can `cat` into your file, search for a task using Choose, and then have it auto-start in Doing.[^14116934] Check it:

![](http://d.pr/i/1hxHJ+)

I still haven't figured out how autocomplete these tasks back in Reminders/Doing, but I'm working on it...


[^141142255]: This thing comes with some serious caveats. Since 10.9, `osascript` for Reminders has essentially been  broken. In 10.10, I've found that AppleScripts dealing with Reminders work relatively well, but only within Script Editor. So, in order to run this, I actually run an Applescript script that opens the file in Script Editor and runs it from there. It's a pain, but I run it on my server so it stays out of the way. I'm not sure I would recommend running this on your everyday work machine.

[^14116934]: The workflow is three steps: keyword with no argument; run script `cat ~/path/to/your/Reminders.txt | choose`; run script `doing now "{query}"`