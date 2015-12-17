---
layout: post 
title: Cleaning Up Markdown Footnotes 
date: '2014-01-29T09:00:22-05:00' 
tags: 
- markdown 
redirect_from: /post/74939959284/cleaning-up-markdown-footnotes/
image: /images/radio-pink.jpg
---

Just a quick update to an [old post](/post/46089397285/the-digital-dissertator-markdown-footnote-update) on Markdown footnotes.

I do all of my writing in Markdown, from these blog posts to [academic papers](/post/72447244823ew-in-print-making-them-talk-animals-sound-and). As I’ve [written before](/post/45896860184/the-digital-dissertator-academic-writing-and), one of the trickiest things I find about academic writing in Markdown is footnoting. My solution—outlined [here](/post/46089397285/the-digital-dissertator-markdown-footnote-update)—is to use [TextExpander](http://smilesoftware.com/TextExpander/) to create timestamps and then page down to post them at the bottom. It works great, except for the fact that to engage the snippet (in my case “;ffn”) you have to leave a space after the end of the sentence, thus creating a gap before your footnotes.

To clean all of those up in one fell swoop, I wrote a super simple service that will do it for you using `sed` and `grep` searching. You can download it [here](http://d.prToW).

Even more interestingly, I learned that [MMD4](http://fletcherpenney.net/multimarkdown/)—which is included by default in [Marked 2](http://!g "Marked2 app")—features a new syntax for inline footnoting: simply adding `[^text to be footnoted]` to the end of a sentence. I can see this being super useful for certain short-form projects, though I still like to look at all my links at the bottom to see if a sources has been cited multiple times, *ibid* usage, etc.

**Update**: Since posting this, I realized that you can set TextExpander to expand after *any* character on a group-by-group basis using the "Expand After" setting. For your academic Markdown, you can set this to "any character" and then you won't need that script at all!

