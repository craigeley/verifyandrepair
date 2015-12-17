---
layout: post 
title: Log Apple Reminders to Day One 
date: '2013-07-19T12:44:00-04:00' 
tags: 
- logging 
redirect_from: /post/55880810270/log-apple-reminders-to-day-one/
image: /images/radio-pink.jpg
---

For the last six months I’ve been experimenting with ways to use [Day One](http://dayoneapp.com/) as daily logbook. One of the most powerful tools for doing this is Brett Terpstra’s [Slogger](https://github.com/ttscoff/Slogger) script, but that pulls exclusively from social networks (hence the name). I wrote a little script to pull from the Reminders app on my laptop and create a time-stamped entry containing all of the things I’ve crossed off for the day. Because iCloud keeps Reminders in sync across your devices, you can mark tasks complete on your iPhone and they will seamlessly sync back to the desktop client and get picked up.

The script is based on two others, one by Samantha Hilton [here](http://www.worldgoneweb.com/2013/listing-the-days-reminders-using-apple-script/), and another by Nick Morris [here](http://drnickmorris.blogspot.fr/2012/08/applescript-reminders-and-day-one.html). I basically combined these approaches to find all the Reminders that were completed today and then push them to a single Day One entry using the Day One [CLI Tool](http://dayoneapp.com/tools/). If you save this script as an application, you can then use a utility like [Lingon](http://www.peterborgapps.com/lingon/) to schedule it to run every night.

You can find the script [here](https://gist.github.com/craigeley/6040083).

If everything goes according to plan, it should look like this: ![](http://d.pr/3UuF+)

I put this together pretty quickly, and would love to find a more elegant solution for repeating these actions across multiple lists without copying and pasting the entire main block of code, which is what I suggest in the script comments (and what I’m actually doing in practice). If you have any ideas, feel free comment here or directly on the [Gist](https://gist.github.com/craigeley/6040083).

