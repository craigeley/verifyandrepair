---
layout: post 
title: 'Sifttter Update: Manual Transmissions' 
date: '2014-02-10T11:04:00-05:00' 
tags: 
- sifttter 
- logging
redirect_from: /post/76227567094/sifttter-update-manual-transmissions/
image: /images/radio-brown.jpg
---

Over the last few weeks I've gotten a lot of positive feedback and suggestions for [Sifttter](http://craigeley.com/post/72565974459/sifttter-an-ifttt-to-day-one-logger), my DiY-via-[@ttscoff](https://twitter.com/ttscoff) automated system to create Day One entries. And it has also taken on a life of it's own: there are now lots of new recipes that people have built to supplement my original handful, and you can find them all in one place by [searching IFTTT for Sifttter](https://ifttt.comecipes/search?q=sifttter&ac=false). You can now bring Facebook, Github, Jawbone, Pocket, Instagram, and a few others into your daily logs.

Of course, there will always be gaps in a system like this, and, in my experience, once you start logging you want to log more. So people have been asking about ways to easily enter items into the system manually. I think there are three really convenient ways to do this, two for your phone (which I almost always have with me) and one for your desktop.

1. **Via Text**: The first is to simply send IFTTT a text message. The beauty of this is that it's platform neutral, and even works with "dumb" phones. This recipe should get you started:

<a href="https://ifttt.com/view_embed_recipe/145588-sifttter-text-manual-logbook-updates" target = "_blank" class="embed_recipe embed_recipe-l_38" id= "embed_recipe-145588"><img src= 'https://ifttt.com/recipe_embed_img/145588' alt="IFTTT Recipe: Sifttter: Text Manual Logbook Updates  connects sms to dropbox" width="370px" style="max-width:100%"/></a><script async type="text/javascript" src= "//ifttt.com/assets/embed_recipe.js"></script>

2. **Via Drafts**: If you are on iOS, [@johnmullins](https://twitter.com/johnmullins) came up with an elegant solution using the Dropbox Actions feature of [Drafts](http://agiletortoise.com/drafts/). To get this going, start by creating a new Dropbox Actions in Settings. Point the Path option to your Sifttter folder, choose a "Predefined" file, and name it whatever you like. Then, in the code section, you should write `- [[date|%B %d, %Y at %I%M%p]] - [[draft]] @done` followed by a hard return. Here is what it should look like when you are all said and done:

![](http://d.pr/zBjV+)

3. **Via Alfred**: If you're using [Alfred](http://www.alfredapp.com/) (and if you use a Mac, you should be), then you can create entries directly via a few keystrokes. I've just slightly modified a workflow created by the people who make Drafts designed to mimic the "Append to Dropbox" action as seen in \#2. Read about it on their website [here](http://agiletortoise.com/blog/2013/03/27/mimic-drafts-append-to-dropbox-using-alfred-on-a-mac/), and then download my modified copy here:

[Sifttter Alfred Workflow](http://d.pr/9uFG)
