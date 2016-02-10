---  
layout: post 
title: Lifelogging with Reporter and Airtable
author: Craig Eley 
date: 2016-02-10
tags: 
- lifelogging
---

I never thought I was interested in a cloud-based software solution that, at its core, is a supercharged spreadsheet, but here we are. After being tipped off by a recent [MacStories article](https://www.macstories.net/roundups/new-apps-for-2016/), I've been tinkering with [Airtable](https://airtable.com) for the last few weeks as a journaling app. 

I'm not sure that's what the designers had in mind, but since it's a relational database, it's actually a really good tool for the job. It's power is in "linked records," which allow individual cells in one entry to link (as the name would suggest) to their own record. The results are cross-referenced and really robust entries. See it in action in this video:

<iframe src="https://player.vimeo.com/video/134358966" width="100%" height="auto" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Linked records make Airtable great for something like a beer log. By setting both the brewery and the style as linked records, it's easy to see every IPA you've had recently, or how often you choose something from [Bell's](http://www.bellsbeer.com). And since you can have multiple "bases" (Airtable's shorthand for "database"), this journal can live alongside others in the same app.

I wanted to push it a bit and see if Airtable could keep a basic record of my day—a "lifelog," if we must. To date, one of my favorite apps for this has been [Reporter](http://www.reporter-app.com), which uses randomly timed surveys to create small snapshots of your life. Unlike Airtable, Reporter's linked records (which it calls "tokens") cannot be further edited or expanded. So, in this case, it seemed like Airtable could fill in that gap, as well as be able to run some more advanced queries.

But as powerful as Airtable is as a database, I soon learned it has some serious limitations when it comes to data entry. For starters, it's not built for speed. The entire app is a webview, so you need to have a data connection for it to even load. Secondly, Airtable's iOS app doesn't pull in data from your phone's sensors. So while it will auto-populate the current time, it can't pull in your geolocation, step count, or other related data.

If you've read this far, you've probably already guessed that my next thought was to combine the two—using Reporter's quick data entry and sending it to Airtable for more detail and analysis. Thanks to Airtable's very well-documented API, this is possible. It's not exactly elegant, but it's possible.

### The Tools

* First of all, I run this script on a home server, and I know that's not something everyone has lying around. If you run it on a laptop that you often carry around with you, this should still work, but it's possible you'll miss some data. I'm sure you could make adjustments to the script to account for that, but I haven't made those adjustments here.
* The script relies on the indispensable [Hazel](https://www.noodlesoft.com/hazel.php).
* Reporter and Airtable, obviously.

### Airtable Setup

First, you want to make sure that you set up your Airtable base to grab everything you want from Reporter. My reports ask 4 questions: "What are you doing?," "Where are you?", "Who are you with?", and asks for a "Tag." These are easy enough to create in Airtable rows; I called mine Activities, Location, People, and Activity Tag (no clue why I didn't just go with "Tag"). I set "Activities" as the "Name Field" in Airtable, which is the default first column. I then set Location, People, and Activity Tag as linked records.

Reporter also pulls down a ton of data in the background, without any user input. I decided to grab timestamps, latitude, and longitude for sorting and later analysis.

Lastly, I created some Airtable-specific columns that exceed what Reporter can do. I added an "Attachments" column, which allows for a picture, and a long-text field called "Notes." All said and done, it looks like this:

[![](http://d.pr/i/14jA2+)](http://d.pr/i/14jA2)
*click to enlarge*

### Script Setup

First, visit the [Airtable API docs](https://airtable.com/api), select your base, and find your base id and your key. You'll need those later.

Second, go to your Reporter settings, and in Export Settings, make sure "Save to Dropbox" is toggled on. This dumps your reports to your Dropbox in real-time.

Third, set a Hazel rule that looks for changes in your Dropbox->Apps->Reporter-App folder. I use the handy rule "Date last modified" is after "Date last matched."

With these two things in place, [the script](https://gist.github.com/craigeley/e5dbe8c29a3abad7fee9) can read from your Reporter JSON and send it over to your base.

### Script Explanation

[The script](https://gist.github.com/craigeley/e5dbe8c29a3abad7fee9) grabs *my* information from *my* Reporter reports and attempts to match them with data in *my* Airtable database. The emphasis is on *mine*, as you can see, because unless both your Reporter and your Airtable match mine exactly, this won't fly. (And even then I'm not sure.) This is really more of a proof-of-concept that universal, generalizable script. I wanted to share it with the hopes that other people could make it work for them, but it is NOT a one-size-fits-all solution.

Because I've found Reporter's JSON to be a little inconsistent (they're [working on it](https://twitter.com/GetReporter/status/697084780828090368)), the script actually uses `grep` searching to find questions, instead of hard JSON parsing. This allows for some flexibility if your questions are worded differently than mine. Look at lines 43, 47, 49, and 51. Those just look for specific words in the questions. You'll notice that in my case, tags and people can contain multiple entries, which is why they are set up as arrays, not single variables.

Starting at line 73, I'm basically just scraping the Airtable API to find IDs that are associated with entries. The API uses these IDs instead of human-readable names, so things like "John Doe" need to be converted. There might be a way to do this with less API calls, but this is working for me so far.

### Wrap-Up

This specificity of both of these apps makes even posting a script like this a little difficult. But I'm hoping it might provide a rough template for your own ideas about how to connect these tools and work with your data. I probably won't be of much "help" to the nearly infinite amount of use cases out there, but if you have some specific thoughts or feedback, please don't hesitate to leave a comment or find me on [Twitter](https://twitter.com/craigeley).