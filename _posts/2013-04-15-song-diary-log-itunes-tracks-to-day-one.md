---
layout: post 
title: 'Song Diary: Log iTunes Tracks to Day One' 
date: '2013-04-15T12:12:00-04:00' 
tags: 
- logging 
redirect_from: /post/48046602590/song-diary-log-itunes-tracks-to-day-one/
image: /images/radio-brown.jpg
---

This morning I wanted to quickly share some modifications I did to [Doug's Trackographer app](http://dougscripts.com/itunes/scripts/ss.php?sp=trackographer) to make it work with Brett Terpstra's [TaskPaper logging script](http://brettterpstra.com/2012/02/25/automating-taskpaper-to-day-one-logs/). Here's the quick and dirty—not fully tested and certainly not guaranteed—with a more detailed post and some fixes coming later in the week or early next.

1.  Make sure you download the above the files: the Trackographer app and the Ruby script. You should also have TaskPaper installed. If you don't, just download the demo and install it so that files with the ".taskpaper" extension are associated with it. You never need to purchase the app. 2.  Launch Trackograher. On first run, it should ask you to set your prefs. I think track title is automatically selected. Also select Artist and Album. Any other metadata is unsupported at this time. Also, set the filetype to plain text. 3.  Close Trackographer. 4.  Go to Trackographer->Show Package Contents->Resources->Scripts->main.scpt 5.  Open in AppleScript Editor, and replace the whole code with this code: [http://d.pr/4lvl](http://d.pr/4lvl) 6.  Create a folder called "Music" in your home Documents folder (or modify the script to point somewhere else). 7.  Open Trackographer, open iTunes, and play some jams. 8.  Test it by running the Ruby script in Terminal.

If everything works, you should end up with a shiny log like this one:

![Log Screen Shot](http://d.pr/uZzZ+)

**Note**: In my very limited testing, opening the raw file log with FoldingText breaks the Ruby script, for reasons that I can't figure out yet. Like I said, this is a very rough idea, and I'll tweak it more when I have more time.
