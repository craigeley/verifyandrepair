---  
layout: post 
title: Getting Together, or, Quick Thoughts on Database Software
author: Craig Eley 
date: 2014-12-08
tags: [database, together, workflow]
redirect_to: http://verifyandrepair.com/12-08-2014/getting-together
---

I’m writing this post from inside [Together](http://reinventedsoftware.com/together/), a database application that I’ve been testing for the last two weeks or so as part of a concerted effort to find a new file manager and personal database utility. Back in grad school I got really deep into [DevonThink](http://www.devontechnologies.com/products/devonthink/overview.html), which remains unparalleled for full-text searching and finding connections between files. But soon after I discovered the wonderful world of Markdown, renounced hierarchical folder organization, and swore I would never look back.

Then I looked around recently and noticed that my files were a total mess. So I opened DevonThink, checked for updates, and realized the app hasn’t seen a full version upgrade in *six years*. Seriously: I searched my Gmail, and they alerted me about the public beta of version 2.0 on December 19, 2008. The current version is 2.8.1. And frankly, it feels that old. The UI—which was never particularly friendly—now seems downright hostile.

So I went off in search of something new, and I thought I would post some quick thoughts for anyone else in the market 

Below are my thoughts on three applications—chosen almost at random—that I thought might work for me, based on three vague criteria: they could store a whole mess of files, appeared to be in active development, and were less than $50.

### Evernote (“free”, or $49 per year)

I discovered Evernote right around the time I was starting to really get into plain text, which meant it was a non-starter for me. I was excited by the very recent iOS/Yosemite update, but my opinion of the service hasn’t changed much. It’s basically rich text files locked down so tightly inside a database that there isn’t even a real way to batch export your stuff. The larger problem, of course, is that when you’re in the app you can’t escape the feeling that you are in a storefront, where you can buy cloud storage, “premium” features, and [a $240 backpack](https://www.evernote.com/market/feature/rucksack). It gives me the same icky feeling I have with many “free” cloud-based subscription services, like [Todoist](https://en.todoist.com/).

Which is a shame, because there are some powerful features lurking in there. It remains the only system I know of for reliable text recognition of handwriting, and the “atlas” feature—where you can find notes based on the location where you wrote them—is just plain cool. Additionally, iOS integration is as tight as they come. I get why so many people like it, but until they get Evernote Plain Text Edition going (for an additional $4.95 a month!), it’s just not for me. I’ve been thinking about using it for scanning some of my personal notebooks, but I’m not sure how much I can before bumping into the storage limits

### Ember ($39)

Let me say this right up front: Ember is not a full-fledged database app, but I really wish it was. It’s designed for graphics and web professionals, and when I first saw it splash across the app store I thought it was an overpriced desktop version of Pinterest. But having worked with it for the full trial period, I think it’s probably the *the* most well-designed app for gathering data from your computer and the web. I’m not sure the folks at [Realmac](http://realmacsoftware.com/) have designs to flesh it out into a robust database application, but I’m keeping an eye on it’s development with my fingers crossed.

Here’s what the app gets right, and the list is long: intuitive and elegant design, Dropbox storage, reliable browser extensions, built-in browser and RSS reader, a lovely iOS app, the ability to create and edit plain text files within the database, and the ability to import files of nearly any type. The problems I have with it are that I want it to do things it simply wasn’t designed to do; I recognize that this is my fault, not theirs. If they decide to implement full-text search and highlights of PDFs and other files types, *and* not limit the RSS reader to images, then this is an app I could see myself working in all day. And even though the database is pretty locked-down, the benefits of the user experience can outweigh that, for me. I’m much more willing to let apps ingest my files when the overall experience is great.

### Together ($49) 

What Together lacks in some of the elegance of Ember it more than makes up for with it’s power and flexibility. In many ways, it feels like an more modern DevonThink with a nicer feature set, which is probably why I feel most comfortable here. It’s most important feature is that it’s really the first database system I’ve come across with a truly transparent and human-readable file system, which—double bonus!—you can store on Dropbox.[^1411292150] While there aren’t browser extensions, the developer has provided lots of [additional scripts](http://reinventedsoftware.com/together/scripts/index.html) for pulling information in and out of the app. It also a sidebar widget called the “shelf” that functions much like DevonThink’s “drawer.” I much prefer menu bar items to these kinds of things, but still: it’s there if you need it, and it can can be turned off if you don’t.

Because of the storage system, Together gives you the power of a database with the flexibility of the file system. Even though I love the idea of tags as opposed to folders, they’re still a useful part of my workflow. They’re especially helpful for iOS apps that read from a specific folders. For example, I like to set [Editorial](http://omz-software.com/editorial/) to read exclusively from a folder that stores blog posts like this one. An additional bonus is that you can write scripts (including [Hazel](http://www.noodlesoft.com/hazel.php) ones). I’ve already worked up some Alfred workflows for interacting even more deeply with multiple Together databases; I’ll post those later in the week.

I’m not sure how many Together users there are out there, but hopefully we can unite and share some tips and tricks.

[^1411292150]: This is an entirely different post, but the much-maligned iTunes is a notable exception. In fact, I credit iTunes as the first app which made me realize how powerful databases could be if you put in the time to have accurate and consistent metadata.