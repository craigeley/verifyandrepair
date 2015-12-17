---  
layout: post 
title: An Alfred Workflow for Together
author: Craig Eley 
date: 2014-12-10 09:00:00 -0600
tags: 
- workflow
- together
image: /images/radio-pink.jpg
---

As you might have [read this week](/2014-12-08/getting-together/), I started using [Together](http://reinventedsoftware.com/together/) as a database and file manager. One of the main reasons is that the files and folders are stored in a human-readable way, and you can work with those files independent of the Together database being open. This means getting things in and out is pretty easy, especially with the provided [script library](http://reinventedsoftware.com/together/scripts/index.html).

However, those scripts work mainly by manually launching the application and moving files into the most recently used database. This might be fine for most people, but it’s less than ideal for my current workflow. For starters, I don’t want to be pulled away from my current window so that an app can launch. Secondly, I want to be able to choose the database used for file import. Plus I just love tinkering with [Alfred](http://www.alfredapp.com/), so I wanted to see if I could script something that could handle my use-cases. I thought it might be useful enough to share.

This Alfred workflow starts by finding all of the Together databases on your computer using the “script filter” method. With the modifier keys, you then have three options—all of which save or move files to the Inbox of whichever database you select.

Here’s how it’s configured:

1. [no modifier] Save webarchive of current Chrome tab to database. This requires that you install the [webarchiver command line tool](https://github.com/newzealandpaul/webarchiver).

2. [`cmd` modifier] This creates and then opens a new plain text file in the selected database, with your default text editor app.

3. [`ctrl` modifier] This moves the selected Finder items into the selected database.

You can [download the workflow here](http://d.pr/f/1f04O), and be sure to let me know in the comments if you have any questions or suggestions for improvement.