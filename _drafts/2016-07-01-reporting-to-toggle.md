---  
layout: post 
title: Server Nerdery: Use Reporter with Toggl to Track Time
author: Craig Eley 
date: 2016-05-09 08:00
tags: [tasks, workflow, github, reminders, servernerdery]
---
*"Server Nerdery" is a series about workflows designed for an always-on computer or home server.*

I've been increasingly interested in using [Reporter](http://www.reporter-app.com/) as the centerpiece of a "lifelogging" strategy for some time now [(for example)](http://verifyandrepair.com/02-26-2016/using-reporter-foursquare/), but arguably it's trademark feature—random snapshots—was also the thing I found the most problematic. It always seemed like I was getting "wrong" time, in the middle of some trivial task, while the larger, more "important" events in my day were going uncatalogued. Of course, I was missing the point, namely, that the reports are indeed meant to be snapshots that are perhaps most useful when viewed over large periods of time. Like, say, [a year](http://feltron.com/FAR12.html).

I'm far less patient. And what I really wanted (perhaps what I've [always wanted](!g "verify and repair sifttter")) was a really great, generally accurate snapshot of my day. What I wanted was time tracking on a meta scale: no billable hours, no team collaboration. I just wanted to know what I was doing at, say, every second of every day.[^I'm really still working through the psychological impulses that drive this.] I messed around a lot with [`doing`](!g "brett terpstra doing") for this, but in the end I decided to go with [Toggl](!g "toggl time tracking"), which works across devices and is free.

However, no time tracking systems works unless it integrates with your other systems, and thankfull Toggl has this super easy [CLI](https://github.com/drobertadams/toggl-cli) that can be written into pretty much any script without much hassle or learning a new API.

So called up two scripts that help me do this, one based on Reporter and the other just runs through Hazel (based on an idea I played around with [here](!g "verify and repair choose to start doing")).



