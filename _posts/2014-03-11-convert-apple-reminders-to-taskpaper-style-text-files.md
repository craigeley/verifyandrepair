---
layout: post 
title: Convert Apple Reminders to Taskpaper-Style Text Files 
date: '2014-03-11T14:31:59-04:00' 
tags: 
- logging 
- Listacular 
- Taskpaper 
- sifttter 
redirect_from: /post/79279572795/convert-apple-reminders-to-taskpaper-style-text-files/
image: /images/radio-purple.jpg
---

In case you hadn’t heard, [Taskpaper](http://www.hogbaysoftware.com/products/taskpaper) is [back](http://www.macdrifter.com/2014/02/the-taskpaper-rd-notebook.html)—kind of. The much-beloved and now semi-abandoned text-based task management platform has taken on some new life this year with the developer [deciding to make the iOS code open-source](http://blog.hogbaysoftware.com/post/72672157477/taskpaper-for-ios-source-code) so that he can focus on the desktop versions of his apps. After messing around with some new apps and scripts this weekend, I’ve decided to move back to plain-text task management because I’ve been really dissatisfied with how [IFTTT](https://ifttt.com/) handles iOS Reminders—I often had to manually open and refresh the app in order for it to pull data into my [Sifttter workflow](http://craigeley.com/post/72565974459/sifttter-an-ifttt-to-day-one-logger), and even when it worked, I often got duplicate entries that I would have to manually delete later. No good.

Instead, I’ve been using the newest version of [Listacular](https://itunes.apple.com/us/app/listacular-for-dropbox-rapid/id624606571?mt=8), which natively supports syncing TaskPaper files from a Dropbox folder as well as includes a really handy timeline view of all upcoming tasks. I’m going to do a series of quick posts this week on making the switch from iOS Reminders to Listacular, and pulling those completed items into your Sifttter workflow.

The first step is copying your iOS Reminders into TaskPaper files, which was surprisingly easy using Applescript. The following script will grab your Reminders (with or without due dates) and bounce them out to TaskPaper text files that mirror your Reminders Lists. Check it out on Gist here: <https://gist.github.com/craigeley/9469798>

*Note*: depending on how many Reminders you have, this script can be pretty slow. In my experience it is best to run it directly from the Applescript Editor and let it go. You should only need to use it once anyway.

