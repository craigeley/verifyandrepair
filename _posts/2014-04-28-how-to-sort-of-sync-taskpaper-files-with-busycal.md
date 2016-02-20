---
layout: post 
title: How to (Sort of) Sync TaskPaper files with BusyCal 
date: '2014-04-28T10:00:20-04:00' 
tags: 
- workflow 
- productivity 
- logging 
redirect_from: /post/84124624548/how-to-sort-of-sync-taskpaper-files-with-busycal/
---

Recently I switched my task management workflow from Apple's Reminders into a Taskpaper system that uses a [unique instance of nvALT](http://craigeley.com/post/80876964138unning-multiple-instances-of-nvalt) when I'm at my computer, and [Listacular](https://itunes.apple.com/us/app/listacular-for-dropbox-rapid/id624606571?mt=8) when I'm on the go. While I like this arrangement, I had really gotten used to being able to view tasks in a calendar layout so I could easily see what was coming up next. It's not hard to make a master list of upcoming tasks from your Taskpaper files, but then you end up with just that: another list.

After some Googling I saw that BusyCal has a [URL handler](https://support.busymac.com/help/21535-busycal-url-handler), making it possible to pass arguments into a string and create new entries from them. I wrote a [rough script](https://gist.github.com/craigeley/11335910) that reads from Taskpaper-formatted files and sends them over to BusyCal. There are some severe limitations here, including no way to account for `@tags` (which I don't use anyway), and no provision for duplicate entries—this will add entries every time, even you already have identical entries in BusyCal.

**Set-up**: This is based on storing multiple Taskpaper files in a single folder. Those files should have the same names as your BusyCal Reminders lists.

![Like so](http://d.pr/liWQ+)

Once you have that established, you can run the script, which should be pretty self-explanatory. It can handle lines with and without formatted due dates. You'll need to change the directory in line 8, and you can change your file extension to whatever you use in lines 8 and 20.

Obviously, this is not a sync solution—it only works one way, and I think it works best for simply viewing your upcoming items. So when I make changes to my Taskpaper files and re-run it, I literally delete all of the BusyCal todos first.[^1]

That being said, if you do make changes in BusyCal (like dragging items to change their due dates) I have *sort of* figured out a way to bring those changes back to your Taskpaper files, but it obliterates any formatting, headers, notes, etc. in the original files—basically anything that is not an explicit to-do item. Still, if you also want to give that a try, you can use this [Reminders to Taskpaper Applescript](https://gist.github.com/craigeley/9469798).

Would love to hear how (or if) this works for you on [Twitter](https://twitter.com/craigeley) or on the Gists.

Taskpaper to BusyCal Script: <https://gist.github.com/craigeley/11335910>

********

[^1]: I found the easiest way to do this is to set the sidebar view to [show dated to dos for the next year](http://d.pr/uheT). Then you can simply select all and delete them.
