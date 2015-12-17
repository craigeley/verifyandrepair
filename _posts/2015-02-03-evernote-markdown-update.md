---  
layout: post 
title: Markdownifying your Evernotes - Update
author: Craig Eley 
date: 2015-02-03
tags: [markdown, evernote, dropbox, workflow]
image: /images/radio-teal.jpg
---

Typically, almost as soon as I published [yesterday’s post](http://craigeley.com/02-02-2015/writing-evernote-markdown/) about writing and backing up Evernote files to Markdown, I started tinkering with it to make it both more robust and easier to run on any individual system.

This new script does three things. First, it now adds support for tags, which requires installing jdberry’s [tag script](https://github.com/jdberry/tag). You can install it with either MacPorts or Homebrew. (And as a reminder, the script also requires Pandoc, which can be downloaded [here](http://johnmacfarlane.net/pandoc/installing.html).) Secondly, it is now designed to run when [Hazel](http://www.noodlesoft.com/hazel.php) detects changes to your Evernote files.

Here’s a screenshot of an extremely simple Hazel rule, which acts on the folder `/Users/USERNAME/Library/Containers/com.evernote.Evernote/Data/Library/Application Support/com.evernote.Evernote/accounts/www.evernote.com/ACCOUNT_NUMBER/content/`:

![](http://d.pr/i/1238N+)

Finally, this version makes it more obvious to select only certain notebooks to act on. Overall, I think this version just makes a lot more sense, and has been working really reliably for me for the last 24 hours or so. Let me know in the comments how (or if) things are working out for you.

[Here is the direct link to the gist](https://gist.github.com/craigeley/9e526e9f0681de4534cc), which is also embedded below.

<script src="https://gist.github.com/craigeley/9e526e9f0681de4534cc.js"></script>