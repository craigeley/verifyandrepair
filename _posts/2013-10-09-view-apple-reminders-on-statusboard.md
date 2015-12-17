---
layout: post 
title: View Apple Reminders on StatusBoard 
date: '2013-10-09T10:40:47-04:00' 
tags: 
- logging 
redirect_from: /post/63557644899/view-apple-reminders-on-statusboard/
image: /images/radio-brown.jpg
---

I’ve been tinkering more with Panic’s Status Board as a secondary screen in my office set-up, and this week I wanted to see if I could get it to play well with Apple’s Reminders. There are already some pretty elegant ways to get to-do items onto Status Board, such as [this code](https://github.com/feju/things-status-board) which pulls from the Things app. But since I don’t use Things, and since that implementation uses multiple files and scripts (some of which exceed my current skill set), I thought I would use Status Board’s “Table” function, building on what I did with my [current writing progress table](/post/61417560267/monitor-current-writing-progress-with-status-board).

Here I wrote an [Applescript](https://gist.github.com/craigeley/6901647) that basically has four steps. The first section reads all of your uncompleted Reminders, then sends them each onto a seperate line featuring the due date, the name of the list, and the name of the reminder. Then it uses the Terminal’s sort command to arrange the lines with the most recent items at the top. The third step is to read all of those lines and put them into an Applescript-formatted list. Finally, it parses that list and converts the information into an HTML file which resides on your Dropbox. From there it should display in Status Board like so:

![](http://d.pr/lY1R+)

I put the script up as a [Gist](https://gist.github.com/craigeley/6901647).

I’d be interested to know if it works for you, or if you’ve seen other ways to show Reminders on Status Board.

