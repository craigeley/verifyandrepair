---
layout: post 
title: Running Multiple Instances of nvALT 
date: '2014-03-27T10:00:19-04:00' 
tags: 
- nvalt 
- workflow 
redirect_from: /post/80876964138unning-multiple-instances-of-nvalt/
image: /images/radio-pink.jpg
---

Over the last two years I’ve experimented with what seems like every plain text/Markdown editor on the planet. But my first love, and the one that I keep coming back to for long-form writing, is [nvALT](http://brettterpstra.com/projects/nvalt/) (though a really close second is [Ulysses](http://www.ulyssesapp.com/)). The best thing about nvALT is that it can read from an entire folder, allowing you to tag files as well as search their full contents. This has essentially eliminated any folder hierarchies from my writing workflow, since I can just find anything with a search. I would say 99% of my work, from these blog posts to academic presentations to teaching notes, resides in a single folder.

But occasionally I do want to create a separate folder—like for my current book project or my [Listacular](http://www.bloomingsoft.com/listacular/) to-dos.[^1476125] In these cases, I still wanted to use nvALT, even though it only likes to look at one folder at a time. However, with a few small tweaks you can run multiple instances of it, and even change their menu bar names and icons. Here is quick assemblage of tips and tricks that I found scattered throughout the web:

### Steps

1.  Copy the nvALT application in your Applications folder. 
2.  Control-click the new copied version and select “Show Package Contents,” then open the Contents folder. 
3.  Open “Info.plist” in a text editor, find the `CFBundleIdentifier` line, and change the line under it to something new. 
4.  Rename the app in the Finder. 
5.  Open it and set all of your preferences.

For bonus style points, you can also rename the application in the menu bar and change the icon:

1.  Go to “Show Package Contents” again, and drill down into Contents → Resources → English.lproj, then open “InfoPlist.strings” in a text editor. 
2.  Change the `CFBundleName` to whatever you would like. 
3.  Open up [LiteIcon](http://www.freemacsoft.net/liteicon/) or your icon app of choice and change your icon.


[^1476125]: Pro tip: I think a separate nvALT instance is a great, free way to replace TaskPaper on your Mac. It adds a strikethrough using the `@done` tag and works seamlessly with Listacular.