---  
layout: post 
title: Writing Workflow 2016 - Part 3: File Management and Version Control
author: Craig Eley 
date: 2016-05-09 08:00
tags: [writing, workflow, git]
---
*This is the third part in a series about my writing workflows. See part 1 [here](http://verifyandrepair.com/04-11-2016/writing-workflow-2016-markdown-environment/) and part 2 [here](http://verifyandrepair.com/04-13-2016/citations-export-preview/).*

Once I have my environment looking sharp and my citations dialed in, the next thing I worry about is document management and version control. For a while after I discovered the ["alternate" version of Notational Velocity](!g "nvALT") I went nuts for a flat hierarchy, single folder approach based on tagging. But then I discovered `git.`

Git is a command line version control program, perhaps most well-known now as the backbone for code sharing website [GitHub](!g "GitHub"). Beyond code, git allows you to have an infinite number of versions and easily compare them side-by-side.

### Workflow
I write using two branches: "master" and "drafting." As you can imagine, drafting is a workspace, while master is the best version of the book as it currently stands. I use two branches so that I can easily accept or reject changes before I push them back into the master document. Here's what I mean.

- When I start a writing session, I switch to the drafting branch if I'm not in there already: `git checkout drafting`.
- Then I [write](http://36hrw115apll2tgpf9vbfhw1.wpengine.netdna-cdn.com/wp-content/uploads/2013/01/DSC_0112-780x521.jpg).
- When I'm done writing, I like to use a difftool to check out the changes I've made, to make sure I haven't actively made anything worse — you can do that with the simple command `git difftool`. There are some expensive options like [Kaleidoscope](http://www.kaleidoscopeapp.com/), but ol' reliable [TextWrangler](http://www.barebones.com/products/textwrangler/) works just fine.
- Once I sort things out, I commit the changes, switch back to my master branch, and merge the changes over.

You can see an example of me diffing this very file right here:



[^16561524]: `Git` is a command line program that comes with your Mac. It's also the foundation of the collaborative codesharing website GitHub, but you don't need a GitHub account to use git on your machine.

