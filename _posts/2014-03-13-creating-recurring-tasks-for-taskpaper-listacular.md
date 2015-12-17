---
layout: post 
title: Creating Recurring Tasks for TaskPaper/Listacular 
date: '2014-03-13T10:00:12-04:00' 
tags: 
- logging 
- taskpaper 
- listacular 
redirect_from: /post/79458008425/creating-recurring-tasks-for-taskpaper-listacular/
image: /images/radio-pink.jpg
---

The question of how to handle recurring tasks in plain-text task management has been [asked](https://www.google.com/search?q=recurring+tasks+in+taskpaper&oq=recurring+tasks+in+taskpaper&aqs=chrome..69i57j0l5.5381j0j1&bmbp=1&sourceid=chrome&espv=213&es_sm=119&ie=UTF-8) and [answered](http://nathangrigg.net/2014/02/repeating-tasks-taskpaper/) seemingly [dozens](https://groups.google.com/forum/#!topic/taskpaper/EywjJpzuQ7Q) of [times](http://www.leancrew.com/all-this/2010/04/scheduling-to-dos-in-ical/), but I thought I would share what I found to be a pretty simple solution using Ruby and [LaunchControl](http://www.soma-zone.com/LaunchControl/)—which are my weapons of choice anyway. This requires a new script and lauchd task for every recurring event, but I think gives you a lot of control without a lot of hassle. The idea is simple: read a certain file every so often, and if a line isn’t in there, add it.

The [Ruby script is pretty straightforward](https://gist.github.com/craigeley/9509906), then you can set it to run in LaunchControl whenever you like. In this screenshot below, the script runs every Monday, Wednesday and Friday at 5am; on the 3rd of every month at 8am; and every January 1st at 12:01am. I rarely use all of those at once, but it does demonstrate how flexible calendar scheduling can be in launchd.

![](http://d.pr/U4UK+)

