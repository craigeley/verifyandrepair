---  
layout: post 
title: Writing Workflow 2016 - Part 1: Markdown Writing Environment
author: Craig Eley 
date: 
tags: [writing, workflow, markdown]
---
It's been almost [three years](http://verifyandrepair.com/03-21-2013/the-digital-dissertator-academic-writing-in-markdown/) since I wrote a substantial post about my everyday writing workflow, with the exception of the occasional toss-off markdown [trick](http://verifyandrepair.com/02-03-2015/evernote-markdown-update/).

But in those three years, even as my jobs have been [less writing intensive](http://fieldnoise.com/09-04-2014/knowledge/), I've never stopped tinkering with my writing workflow (of course), and have managed to learn a few new tricks along the way. So I've cooked up a series of  posts to share my current layout for everyday writing and blogging as well as for my academic book project.[^Which is to say, I think I finally figured out footnotes!] The good news is, it's all the same workflow — besides some small details, by and large I use the same software and systems every time I sit down to type. 

One of the reasons this post has been such a long time coming is that I'm *terrible* at documentation; I tinker first, and then try to remember what I did later. This is not good practice,  but it forced me to really comb through what I'm doing now and evaluate what was working and what was necessary. So just writing this all down has been supremely useful for me, and hopefully will be for some of you as well.

Here is a general outline of where we're going, over the next three posts:

- Part 1 (this post)
    + Why Markdown?
    + Creating a Markdown writing environment in Sublime Text
- Part 2
    + Managing citations with Zotero
    + Previewing documents in Marked 2
    + Exporting documents via Pandoc
- Part 3
    + File management and version control with Git

### Why Markdown?
If you've gotten this far, you probably already have a passing knowledge and interest in Markdown, and hopefully have read one of [several](http://programminghistorian.org/lessons/getting-started-with-markdown) good [tutorials](http://chronicle.com/blogs/profhacker/markdown-the-syntax-you-probably-already-know/35295) on the [subject](http://brettterpstra.com/2011/08/31/why-markdown-a-two-minute-explanation/). I'm not going to rehash them all here.

There are great, practical reasons to use Markdown: it's plain text, human-readable, and can easily be translated into other formats. But for me, one of the most important concepts behind Markdown is that writing and formatting are two different things. This allows the endpoint of the process — whether that be a blog post, wiki entry, digital edition, printed syllabus, journal submission, book manuscript — to be separate from the work of drafting it. Honestly, this changed the way I think about my writing. Microsoft Word uses the paradigm of the word processor: printed words on a sheet of paper. Markdown treats writing as code: iterative and malleable. Personally, that has really alleviated some of the pressure I feel during first drafts, or even sitting down to write in the first place.

### Creating a Markdown Environment in Sublime Text
There are a variety of Markdown-informed and Markdown-flavored full-featured writing applications out there, including [Ulysses](http://www.ulyssesapp.com/) and [Scrivener](https://www.literatureandlatte.com/scrivener.php?show=features&platform=mac). I've tried them all, and I've found that I find that to get the most out of Markdown it's best to use it "raw," which is to say, in text files stored in folders.[^I'll get more into this in [part 3](https://www.linkedin.com/).] {>>Add link in there once you have it.<<}

With that in mind, when I sit down to write, I write in [Sublime Text](https://www.sublimetext.com/3). It was designed for code, built to be fast, and is insanely customizable. That customization certainly comes with a not-insignificant learning curve, but after much trial and error, here is a glimpse of where I ended up:

![A screenshot of my writing environment for this post](http://d.pr/i/18fCB+)

What you see there is basically a ["solarized"](http://ethanschoonover.com/solarized) writing environment that handles Markdown and [Critic Markup](!g "Critic Markup") and allows for some small niceties like word count.

#### "Basic" Settings
When you download and first run Sublime, it looks like a [little black box](http://d.pr/i/17CeQ). To change its visual appearance, you have to familiarize yourself with how Sublime handles customization, which is slightly different than other Mac apps. There are some settings that are available via the menus, but many others that are only available through XML files stored in the application's library folder (~/Library/Application Support/Sublime Text 3/). 

Say you want to change the color scheme. You can find a variety of options in "Preferences -> Color Scheme". No "code" required! But say you want to permanently change the font size. To do that, you select "Preferences -> Settings - User," which opens a file. There, you can add the line `"font_size": 17` to make things much bigger. To learn which settings are where and what some of the defaults are, take a look at "Preferences -> Settings - Default." That's a master file that cannot be edited. To make any changes, copy and paste the lines into your User file. Experiment!

#### Package Installations

Adding deeper customization to Sublime works through community built "packages," which work like browser extensions to add extra functionality on top of the platform. To make working with them easier, install [Package Control](https://packagecontrol.io/installation) by following the instructions there.

Once you have Package Control installed, you can invoke it and add packages. I highly recommend starting with two: Word Count and MarkdownEditing. The first one does exactly what it says, and the second one adds some really handy extra Markdown features, including autocompleting Markdown syntax like asterisks and brackets.

Customizing Sublime Text works largely through community-built "packages," which work much like browser extensions, adding extra functionality on top of the platform. To make working with them 

1. Package Control
2. MarkdownEditing
3. Word Count

Then, Critic Markup. This is not yet an "official" package, but it's nice.

When you download and first install Sublime, it looks like a little black box. I'm into "dark modes" as much as the next person, but it's not how I like to write. So the first thing I do is solarize. That's in Preferences -> Color Scheme -> Solarized (Light).

Now, much more importantly, is that customization of Sublime Text happens largely through packages. 

View -> Hide minimap

To create this environment, I have three packages installed.

The first is WordCount. It's super easy.
The second is Critic Markup. This is where things get complex.
	- Change Critic Markup settings
	- Change Critic Markup color scheme

The Critic Markup package consists of two things: the "language", which details the syntax to be highlighted, and the "theme," which dictates the colors of those highlights.


Now, the learning curve is not insignificant, and in fact there are some settings in my own writing environment that I'm not totally sure how they were set. But here we ar

It’s just insanely fast, insanely extensible and customizable. There is nothing that it can’t do. Because I didn’t do a great job documenting. 

{>>It can do critic markup comments<<}. And it can do [inline hyperlinks](http://verifyandrepair.com), which is pretty much all I need from my editor.

Next: citations, previews, and export.



