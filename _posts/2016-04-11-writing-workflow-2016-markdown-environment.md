---  
layout: post 
title: "Writing Workflow 2016, Part 1: Markdown Writing Environment"
author: Craig Eley 
date: 2016-04-11 08:00
tags: [writing, workflow, markdown]
---
It's been almost [three years](http://verifyandrepair.com/03-21-2013/the-digital-dissertator-academic-writing-in-markdown/) since I wrote a substantial post about my everyday writing workflow, with the exception of the occasional toss-off Markdown [trick](http://verifyandrepair.com/02-03-2015/evernote-markdown-update/). But in those three years, even as my jobs have been [less writing intensive](http://fieldnoise.com/09-04-2014/knowledge/), I've managed to improve my workflow, or rather, I've managed to do some things less incorrectly. 

So I've cooked up a series of  posts to share my current setup for everyday writing and blogging as well as for my academic book project.[^164101747] The good news is, it's all the same workflow. Besides some small details, I use the same software and systems every time I sit down to type.

Here is a general outline of where we're going:

- Part 1 (this post)
    + Why Markdown?
    + Creating a Markdown writing environment in Sublime Text
- [Part 2](/04-13-2016/citations-export-preview/)
    + Managing citations with Zotero
    + Previewing documents in Marked 2
    + Exporting documents via Pandoc
- Part 3 (coming Friday)
    + File management and version control with Git

### Why Markdown?
If you've gotten this far, you probably already have a passing knowledge and interest in Markdown, and/or have read one of [several](http://programminghistorian.org/lessons/getting-started-with-markdown) good [tutorials](http://chronicle.com/blogs/profhacker/markdown-the-syntax-you-probably-already-know/35295) on the [subject](http://brettterpstra.com/2011/08/31/why-markdown-a-two-minute-explanation/). I'm not going to rehash them all here.

There are great, practical reasons to use Markdown: it's plain text, human-readable, and can easily be translated into other formats. But for me, one of the most important concepts behind Markdown is that writing and formatting are two different things. This allows the endpoint of the process — whether that be a blog post, wiki entry, digital edition, printed syllabus, journal submission, book manuscript — to be separate from the work of drafting it. Microsoft Word uses the paradigm of the word processor: printed words on a sheet of paper. Markdown treats writing as code: iterative and malleable. Your mileage may vary, but for me, that notion has alleviated some of the pressure I feel during first drafts, or even sitting down to write in the first place.

### Creating a Markdown Environment in Sublime Text
There are a variety of Markdown-informed and Markdown-flavored full-featured writing applications out there, including [Ulysses](http://www.ulyssesapp.com/) and [Scrivener](https://www.literatureandlatte.com/scrivener.php?show=features&platform=mac). I've tried them all, and in my experience getting the most out of Markdown means using it "raw," in files and folders as opposed to in databases.[^164101752]

With that in mind, when I sit down to write, I write in [Sublime Text](https://www.sublimetext.com/3). It was designed for code, built to be fast, and is insanely customizable. That customization certainly comes with a learning curve, but after much trial and error, here is a glimpse of where I ended up:

[![](http://d.pr/i/11eGa+)](http://d.pr/i/11eGa)

*A draft of this post in ["solarized"](http://ethanschoonover.com/solarized) Markdown with [Critic Markup](!g "Critic Markup") and a word count.*

#### "Basic" Settings
When you first download and run Sublime, it looks like a [little black box](http://d.pr/i/17CeQ). To change its visual appearance, you have to familiarize yourself with how Sublime handles customization, which is slightly different than other Mac apps. There are some settings that are available via the menus, but many others that are only available through XML files stored in the application's library folder (~/Library/Application Support/Sublime Text 3/). 

Say you want to change the color scheme. You can find a variety of options in "Preferences -> Color Scheme". No code required! But if you want to permanently change the font size, you select "Preferences -> Settings - User," which will open a file. There, you can add the line `"font_size": 17` to make things bigger. To learn which settings are where and what some of the defaults are, take a look at "Preferences -> Settings - Default." That's a master file that cannot be edited. To make any changes, copy and paste the lines into your User file. Experiment!

Also, note that you can view a sidebar of open files. This can also be entire folders of files, and you can save these sidebar arrangements as "Projects" from the menu bar. This allows you to create a draft or file management system like you see in apps like Scrivener.

#### Package Installations
You can add more robust customization to Sublime through community built "packages," which work like browser extensions: they add extra functionality on top of the platform. To make working with them easier, install [Package Control](https://packagecontrol.io/installation) by following the instructions at that website.

Once you have Package Control installed, you can invoke it and add packages. I highly recommend starting with two: Word Count and MarkdownEditing. The first one does exactly what it says, and the second one adds some really handy extra Markdown features, including autocompletion of Markdown syntax like asterisks and brackets.

For more detail, [this post](http://plaintext-productivity.net/2-04-how-to-set-up-sublime-text-for-markdown-editing.html) does a nice job walking you through the process.

#### Getting Critical
For even more flavor, I like to use [Critic Markup](http://criticmarkup.com/), which allows you to make basic proofing marks and include inline comments. It's not available as a package, so you have to manually install it to `~/Library/Application Support/Sublime Text 3/Packages`. (Directions [here](http://criticmarkup.com/sublime-text.php).) 

Once it's installed, you can open a Markdown file and view it in Critic from the menu path "View -> Syntax -> Critic Markup -> Critic." (You can also use this menu to open all Markdown files using Critic.) Critic works using a Sublime's "syntax specific" settings, a feature that allows you to style your Markdown files differently from your plain text ones, your Python scripts, etc. You can see how this works in by looking at Preferences -> Settings -> Syntax Specific - User. There you can tinker with the font, hide the line numbers, and more. [Here's a link](http://d.pr/n/DYvg) to my prefs for your reference.

When you look at these settings, you'll see that they override your color scheme choice with one of their own. This makes sense — for the package to work, it creates a "language" (so it knows what strings to highlight) as well as a "theme" (the colors to make those highlights). These files are stored in the package folder, and, like anything in Sublime, you can mess with them. Since I wanted to keep my solarized look, I modified the color scheme and certain aspects of the language. I won't cover that here, but feel free to have a look at my files while you tinker with your own: [here's](http://d.pr/n/1fHoe) the language, and [here's](http://d.pr/n/1crYu) the theme.

Up next: citations, previews, and export.

[^164101747]: I think I finally figured out footnotes!
[^164101752]: I'll get more into this in part 3.