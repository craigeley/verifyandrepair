---  
layout: post 
title: Writing and Saving Evernotes as Markdown
author: Craig Eley 
date: 2015-02-02
tags: [markdown, evernote, dropbox, workflow]
redirect_to: http://verifyandrepair.com/02-02-2015/writing-evernote-markdown
---

[Update: See [this post](http://craigeley.com/02-03-2015/evernote-markdown-update/) for a more recent version of this script.]

I think I might have found a way to use—even love—Evernote, in spite of my misgivings. As I’ve noted [at least once before](http://craigeley.com/12-08-2014/getting-together/), I’ve never been a huge fan of the software because it’s not plain text and is all but impossible to work with your files outside of the Evernote ecosystem. That said, it’s a *really* powerful ecosystem with lots of third-party integrations. The new [“atlas” function](https://www.mapbox.com/blog/evernote-geocoding-custom-maps/) is especially cool; when paired with something like Day One you can geolocate much of your life and work.[^15211038]
  
So last week I went back to check out it—for the dozenth time—this time with the intention of utilizing a [script that watches Evernote for changes](https://github.com/regedor/everwatch/blob/master/everwatch.rb) so that files can be viewed in Marked 2. I assumed that script had something to do with Markdown, but it actually doesn't: it just copies Evernote’s HTML into a dummy “markdown” file that Marked can display. As such, any kind of markdown syntax results in errors in Marked.
  
However, after messing around with the script a little bit, it became clear that it was possible to leverage Evernote’s Applescript and the awesome [Pandoc utility](http://johnmacfarlane.net/pandoc/) to write Evernotes in Markdown format and then save them in near-real-time to a Dropbox folder. Then, you can simply drag that folder into Marked 2, which will update the changes on the fly. It even allows for the use of custom footnotes.[^151282052]
  
![Evernote file on the left, Marked 2 on the right](http://d.pr/i/l42z+)
  
There are many caveats to how this works right now, based on my workflow: First of all, the backups happen individually for the note you are currently working on. Secondly, the sync is one way, so it’s really just using it for backup. (I think it's possible to do it the other way, though I’m not *quite* there yet.) The second is that if you rename notes you’ll end up with duplicates. Right now, I’m treating that as a kind of necessary evil, and not that big of a deal: the files are small, and I would rather have duplicate data than data loss.
  
Here is the code, which feels a little Frankenstein, but has been working great for me over the past week. You need to change the path to your Evernote folder in line 7, and you should change the path your Dropbox storage (or local storage, whatever) in line 8. You can also add an “if” statement in the Applescript portions so that it only pulls from a specific notebook. I’ve found that really helpful.[^15211223] There is some crazy `gsub` action that happens because Pandoc escapes *everything*, but again, it seems to work. This script runs continuously in the background. Let me know if you try this and it works or doesn’t for you. You can find the gist [here](https://gist.github.com/craigeley/8d3fe0e5430e6b1233fc).
  
<script src="https://gist.github.com/craigeley/8d3fe0e5430e6b1233fc.js"></script>
  
[^15211038]: Free idea: What I would really love is an app that takes a page from photo software and geolocates files based on GPX data.
  
[^151282052]: For some posts on my Markdown footnote scripts, look [here](http://craigeley.com/tagged/markdown/).
  
[^15211223]: For example, you can add lines like `if notebook of item 1 of the_selection is (notebook named "Writing") then / return HTML content of item 1 of the_selection / end if`
