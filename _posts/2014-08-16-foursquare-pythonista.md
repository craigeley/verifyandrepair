---  
layout: post 
title: Restore Foursquare Checkins with Launch Center and Pythonista [Updated]
author: Craig Eley 
date: 2014-08-25
tags: 
- automation
- coding
- logging
image: /images/radio-brown.jpg
---

With the recent update to [Foursqure 8.0 for iOS](https://foursquare.com/), the ability to "check in" at locations has been officially offloaded to Foursquare's sister app, [Swarm](https://www.swarmapp.com/). This wouldn't be a huge deal if Swarm wasn't so greedy—it forces you to have GPS location on at all times, and subsequently drains your battery and/or bombards you with notifications. And while it's nice for people who rely on the social features of the app, it's really frustrating for people like me who used Foursquare mainly for [personal logging](http://craigeley.com/tagged/logging/) and other location-based things made possible with its [IFTTT channel](https://ifttt.com/foursquare).

So, just for fun, I whipped up a [Pythonista](http://omz-software.com/pythonista/) script over the weekend that logs you in to Foursquare without the annoyances of Swarm. You simply fire the script, enter some or all of the name of your location, and then the Foursquare API handles the rest. In its current implementation, there is one serious caveat: you can't choose your venue from a list. Basically, you enter a search term and then the script chooses the top result. Unless you are in a place with a lot of similarly named locations, I think you'll be fine. And if you know how to code a better solution, I would love to see it—I'm super new to Python(ista).

Here's how it works.

### Create an "App"

The first thing you need to do is log in to the Foursquare developer portal, which you can do using your normal login credentials. From there, select "My Apps" from the top and then the green button for creating a new app. You only need to fill in some basic information, but pay special attention to your redirect url, since you'll need this later. If you don't have your own webspace, you can actually use almost any url, including this one (http://craigeley.com). Once that is done, copy and paste your Client ID and Client Secret and save them in a text file. They are important.

Next, you need to authorize yourself as a user of your new web app. The easiest way to do that is to go to the following web address, replacing `CLIENT_ID` with your Client ID and `YOUR_REGISTERED_REDIRECT_URI` with the URI that you entered earlier:

`https://foursquare.com/oauth2/authenticate?client_id=CLIENT_ID&response_type=token&redirect_uri=YOUR_REGISTERED_REDIRECT_URI`

Once you do that, you should kick back to your URI, except with a trailing string that includes `#access_token=` followed by your actual access token. Again, keep that in a safe space along with your Client ID and Secret.

### Run the Script

Once you have those three strings, you'll need to plug them into [the Pythonista script](https://gist.github.com/craigeley/335507da44a655070d66). 

<script src="https://gist.github.com/craigeley/335507da44a655070d66.js"></script>

As you can see, the script uses the Foursquare API to search for locations, then it takes the top result and checks you in. It shows a little pop-up to let you know where you checked in, and then it kicks you back out to Launch Center, because I'm assuming that's where you started the script from. You can always lop off that line or change it if you want to go somewhere else.

Let me know how it goes [on Twitter](https://twitter.com/craigeley) or in the [comments](/08-18-2014/foursquare-pythonista/#comments).

### Update (August 25th)

After talking about this on Twitter, [Ryan](https://twitter.com/rjames86) came up with a really elegant solution that uses a table view and lovely icons as opposed to my blunt force search method. As a bonus, he also created a dedicated home screen launcher.

View it in action [here](https://www.dropbox.com/s/vb4fjw1y3szywqe/ReflectorRecording.mov), download the script [here](https://gist.github.com/rjames86/e5dd9acadaff7cd4280d), and look into custom home screen launching [here](http://olemoritz.net/custom-homescreen-icons-with-pythonista.html). Thanks, Ryan!
            