---  
layout: post 
title: Using Reporter as a Foursquare Client
author: Craig Eley 
date: 2016-02-26 08:15
tags: [lifelogging, foursquare, reporter]
---
After spending [some time with Reporter's JSON output](/lifelogging-with-reporter-and-airtable/), I've been thinking about ways to leverage it as a input method for other tools and services. Perhaps the most obvious is Foursquare, since [Reporter](http://www.reporter-app.com/) already pulls from the Foursquare API for its location data.

Getting this to work just requires a little API mojo and grep parsing of your Reporter questions.

### Setup
- Make sure your Reporter app is saving your entries as JSON files to your Dropbox. This is in Settings ->Export Settings ->"Save to Dropbox."
- Get a Foursquare API token. You can do this by [registering an app](https://foursquare.com/oauth) with them. It doesn't have to be an actual app, of course—you can just fill out the form to get your token.
- Make sure that your report contains these two questions: "What are you doing?" and "Where are you?" It can contain more than those questions, but it should at least contain those two.
- Make sure Hazel is watching your Reporter folder, which is in ~/Dropbox/Apps/Reporter-App. I use my favorite rule: "Date last modified" is after "Date last matched."

### The Script
Once you have that all set up, here is [the script](https://gist.github.com/craigeley/92e8a01acc4a40d84d16) that Hazel should fire when your files change. You'll need to add your filepath on line 18 and your API token on line 19. If you want your checkins to be public, you can either remove line 74 or change the value to "public."

Then you should be off to the races. I've only tested this out for a few days, so if it's crazy broken let me know and I'll see if I can tweak it. This is my first time really working with `net/http` — usually I take a shortcut and just use `curl` — but I wanted to try making it "pure" ruby. Much of the credit goes to [Paw](!g "mac app paw") for helping with that last API call.

<script src="https://gist.github.com/craigeley/92e8a01acc4a40d84d16.js"></script>