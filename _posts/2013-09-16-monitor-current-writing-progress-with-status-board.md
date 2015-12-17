---
layout: post 
title: Monitor Current Writing Progress with Status Board 
date: '2013-09-16T13:18:00-04:00' 
tags: 
- logging 
redirect_from: /post/61417560267/monitor-current-writing-progress-with-status-board/
image: /images/radio-teal.jpg
---

It’s been a really long time since I posted anything about my strategies for [logging and personal archiving](/tagged/logging), but this morning I whipped up a little script for Panic’s [Status Board](http://panic.com/statusboard/) application that I think is pretty cool. I do mean “cool,” in this case, as opposed to “useful”—this idea started as a script that logs to Day One, but took a detour along the way. I’ll post about that other one later in the week. This is just eye candy, for those of you with a spare iPad and/or HDTV lying around while you work.

The script itself pretty straightforward: it scans a specific folder for changes to plain text files, then grabs the file name, modification date, and current word count, and pushes that out to an html file that can be read by the Table module of Status Board. (And, as usual, it is basically a slight modification of something already done by [Brett Terpstra](https://gist.github.com/ttscoff/1913007)). Here is what it looks like for me right now (yes, I blurred out some stuff I was working on, neurotic academic opacity rears its ugly head, etc.):

![](http://d.pr/3seS+)

You can adjust a lot of different things in here (including that little pencil icon), which should be pretty clear from looking at the code. You can find it on [Gist](https://gist.github.com/fieldnoise/6583530).

