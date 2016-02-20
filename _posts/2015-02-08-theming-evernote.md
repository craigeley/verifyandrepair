---  
layout: post 
title: Theming Evernote
author: Craig Eley 
date: 2015-02-08
tags: [evernote, workflow]
redirect_to: http://verifyandrepair.com/02-08-2015/theming-evernote
---

As I mentioned [last](/02-02-2015/writing-evernote-markdown) [week](/02-03-2015/evernote-markdown-update), I’ve been getting back into Evernote as an all-purpose database platform. However, there were still a few features that I missed from some of my favorite text editors: control over the color scheme, and a “distraction-free” full screen writing mode.

However, since Evernote is basically an HTML editor, I suspected there might be a way to style it. And sure enough, after poking around a bit, I found a CSS file which controls how the notes look. (And just the notes—I couldn’t find a way to style the sidebars.)

In less than hour (it would have *much* less if I knew more about CSS), I was able to both [“solarize”](http://ethanschoonover.com/solarized) my notes (sort of) and create a much more readable full-screen mode by limiting note text width.

[![Easy, breezy contrast](http://d.pr/i/12Gg8+)](http://d.pr/i/12Gg8)

If you know what you’re doing, then you can find the file in `/Applications/Evernote.app/Contents/Resources/mac/en-mac-min.css.` Also, since this is as a hack, be sure to save a backup of this file—it will be overwritten every time the software is updated or needs to be reinstalled.

If you need more help, here’s a step-by-step walkthrough:

### Find the File and Change Permissions
1. Control-click on the Evernote application and choose “Show package contents,” then drill down into Contents -> Resources. In there, you’ll find a folder named “mac.”
2. Control-click on that folder and choose “Get Info.” At the very bottom of the info panel, you’ll find “Sharing & Permissions.”
3. Unlock the little lock with your admin password, then add admins to the list using the plus sign. Change the permissions to “Read & Write."
4. Finally, click the gear icon and choose “Apply to enclosed folders."

### Modify the File
Once you are in and have write permissions you can open the folder and find a file named “en-mac-min.css.” If you’ve never worked with CSS files then the default program will likely be Safari, but you’ll want to open the file in something like [Text Wrangler](http://www.barebones.com/products/textwrangler/). Then, you’ll have one very long string of text which controls how your Evernotes look. In order to get something that looks like the image above, you can just delete the entire file and replace it by copying and pasting [this whole mess of text](http://d.pr/n/12mKl+).

Good luck—and please feel free to share any additional theming tips and tricks.

