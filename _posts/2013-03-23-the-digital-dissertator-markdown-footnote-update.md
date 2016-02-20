--- 
layout: post 
title: 'The Digital Dissertator: Markdown Footnote Update' 
date: '2013-03-23T14:25:00-04:00' 
tags: 
- digidiss 
- markdown
redirect_from: /post/46089397285/the-digital-dissertator-markdown-footnote-update/
redirect_to: http://verifyandrepair.com/03-23-2013/the-digital-dissertator-markdown-footnote-update
---

The one thing that I neglected to mention in my [recent post](/post/45896860184/the-digital-dissertator-academic-writing-and) about using a [TextExpander](http://www.smilesoftware.com/TextExpander/index.html) timestamp to make Markdown-style footnotes is that the snippet gets pretty ugly when you go back in and add footnotes at the revision stage—which we're all doing, right? As my original snippet was written, it would do a carriage return and then put your footnote smack in the middle of the page.

![Gross.](http://d.pr/fPVU+)

That got me thinking about the snippet in general, and that really what it needs is "page down" functionality. This was a little trickier than I'd hoped, but is totally possible thanks to TextExpander's ability to handle AppleScript and to nest scripts inside of others. Basically, the old script called for creating the timestamp, then making two carriage returns, and finally generating the timestamp again with a colon after it.

This new script creates the time stamp, pages down to the bottom of the document, adds two returns, then pastes the clipboard (which is already the timestamp), then adds the colon. This way, no matter where you are in the document, you can generate your footnote at the bottom. Markdown, as usual, can handle the work from there, since in exporting or converting it will automatically match and number your notes for you.

Here is how this works:

1. Create an AppleScript snippet in TextExpander that will page down and paste the contents of the clipboard with a colon after it:

		tell application "System Events" 
		key code 125 using command down --this is "scroll to bottom" 
		keystroke return 
		keystroke return 
		keystroke "v" using command down --this pastes the clipboard 
		keystroke ":" 
		keystroke space
		end tell

2. Create a plain text snippet in TextExpander that create your footnote timestamp syntax and then call your new AppleScript snippet:

`[^%y%1m%e%1H%1M]%snippet:;pgd%`

The portion "%snippet:;pgd%" will be replaced by whatever you decided to call the page down snippet.

That's all there is to it. Now your footnotes will always be at the very bottom, no matter where you are at the writing or revision stage.