---
layout: post 
title: Moving Completed Listacular/TaskPaper Items to Sifttter 
date: '2014-03-12T10:53:00-04:00' 
tags: 
- logging 
- listacular 
- taskpaper 
- sifttter 
redirect_from: /post/79362016345/moving-completed-listacular-taskpaper-items-to-sifttter/
image: /images/radio-brown.jpg
---

Once you have [converted your Apple Reminders to TaskPaper files](http://craigeley.com/post/79279572795/convert-apple-reminders-to-taskpaper-style-text-files) the real fun can begin: running scripts on those files to keep them neat and clean and moving them into your [Sifttter](http://craigeley.com/post/72565974459/sifttter-an-ifttt-to-day-one-logger) workflow. This is actually a little tricky for the time being, since neither [Listacular](https://itunes.apple.com/us/app/listacular-for-dropbox-rapid/id624606571?mt=8) nor [TaskPaper](http://www.hogbaysoftware.com/products/taskpaper)—yet!—add time data when tasks are completed. Listacular simply adds an “@done” tag to the end of the line, while some versions of TaskPaper or other apps will add “@done(yyyy-mm-dd). Either case is insufficient for Sifttter, which works best with timestamps as well.

So for this to work—and I know this is far from an ideal solution—you either have to tag your completed items by hand or use a second app that supports [TextExpander](https://smilesoftware.com/TextExpander/touch/). As weird as this sounds, I actually look at Listacular to see what I have to do, and then use [Byword](http://bywordapp.com/) to mark items as completed using a TextExpander snippet that expands to “@done(yyyy-mm-dd HH:MM)”, where HH and MM represent 24-hour time.

Once you have your completed items tagged that way, you can set [this Ruby script](https://gist.github.com/craigeley/9494663) to run every evening as a part of your Sifttter workflow. It grabs your completed entries, moves and formats them over to your Sifttter files, then essentially deletes them from your files.[^14761233]

While this works fun running at the end of every day, if you are already a [Hazel](http://www.noodlesoft.com/hazel) user, I have gotten *really* nice results from running this script every time a file a my Listacular folder changes. If you are using TextWrangler you can practically see it happen in real-time, which is just cool.

[Link to the Gist](https://gist.github.com/craigeley/9494663)

[^14761233]: Technically, it overwrites those files with every line *except* the ones that were completed.