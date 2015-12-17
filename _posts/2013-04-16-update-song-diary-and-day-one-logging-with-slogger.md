---
layout: post 
title: 'Update: Song Diary and Day One Logging with Slogger' 
date: '2013-04-16T14:00:17-04:00' 
tags: 
- logging 
redirect_from: /post/48132171348/update-song-diary-and-day-one-logging-with-slogger/
image: /images/radio-purple.jpg
---

Well, that didn't take long.

Almost immiediately after I posted yesterday about [logging from iTunes to Day One](/post/48046602590/song-diary-log-itunes-tracks-to-day-one) by modifying [Trackographer](http://dougscripts.com/itunes/scripts/ss.php?sp=trackographer), I came across Brett Terpstra's [Slogger](https://github.com/ttscoff/Slogger) suite of scripts, which allows you to generate Day One entries from an incredible variety of web-based services. Obviously, it was the[Last.fm plugin](https://github.com/ttscoff/Slogger/blob/master/plugins/lastfmlogger.rb) that really intrigued me, especially since my Trackographer script was being a little finnicky yesterday morning.

So I tested it. My initial results were pretty unsatisfying, with songs getting pulled down in seemingly random order. They also didn't include a timestamp for me to manually rearrange them if I wanted to (which I didn't). I know literally nothing about Ruby scripting, but I could tell that the script was pulling down data from an RSS feed. So I tried pointing the [RSS Slogger plugin](https://github.com/ttscoff/Slogger/blob/master/pluginssslogger.rb) to my last.fm feed, and then modifying the output to produce something similar to [what I had done yesterday](http://d.pr/uZzZ). Voila! I feel like what I lost in formatting I made up for in the fact that song titles link to their Last.fm page.

![new last.fm entry screenshot](http://d.pr/vAtA+)

In order to make this work, you'll need to replace the code in the RSS plugin with the code found [here](http://d.pr/E0dd), which, like I said, is super hackish and probably gross if you know anything about Ruby. Of course, you'll also need to following all of the basic set-up steps with [Slogger](https://github.com/ttscoff/Slogger/blob/masterEADME.md) first. That involves some command-line stuff, but it's pretty straightforward.