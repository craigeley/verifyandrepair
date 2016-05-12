---  
layout: post 
title: Writing Workflow 2016 - Part 3: File Management and Version Control
author: Craig Eley 
date: 2016-05-09 08:00
tags: [writing, workflow, git]
---
*This is the third part in a series about my writing workflows. See part 1 [here](http://verifyandrepair.com/04-11-2016/writing-workflow-2016-markdown-environment/) and part 2 [here](http://verifyandrepair.com/04-13-2016/citations-export-preview/).*

By far the biggest discovery of my writing workflow has been `git`. Git is a powerful command line utility for version control, now perhaps best known as the basis for the code-sharing platform [GitHub](https://github.com/) — though you don't need to use GitHub to benefit from a git workflow. For our purposes, git's strength is its ability to keep track of and compare multiple drafts of a project. If you already know git, you can [skip down to my implementation](#workflow). If you're a total newbie, then feel free to read on.

Once you get the hang of it, you'll find that it's much, much more effective than filling up a folder with "essay_version1," "essay_version2," etc.

Speaking of folders, git works best when you are using them, ideally one per project. For a while after I discovered the ["alternate" version of Notational Velocity](http://brettterpstra.com/projects/nvalt/), I went nuts and decided all of my writing documents should exist in a single folder. But once I discovered git (and stopped worrying that iOS meant [the death of the filesystem](http://www.fastcompany.com/3007889/how-one-new-service-tackling-death-file-system)) I reverted to using folders – and even embracing their [skeuomorphism](http://tumblr.austinkleon.com/post/58625662398).

I create folders for "bigger" projects, like conference presentations, essays, and my book projects. And since git works with more than text, I allow those folders to filled with all kinds of stuff, from slide shows to loose notes. Once you have that folder, you're ready to start using git.

### Overview
Git is very complex, and computer programmers have their own complicated thoughts on the best git workflow. Since we're using git for writing, though, we can break things down pretty basically. Here are some key terms:

- **Repo**: git projects (in our case, project folders) are called repositories, or "repos" for short
- **Branches**: each repo can contain multiple "branches," separate threads of the project that allow you to work on something without worrying that you will ruin what you already have. While this applies mainly to coding, it can also be an important tool for writing.
- **Commit**: When you commit something to git, you're simply taking a snapshot of everything in the folder as it is right at that moment. You also leave a little note, called a commit message, that helps you remember what's new or what's changed.
- **Diff(tool)**: to "diff" in git means to compare the differences between two different versions of your project. This can be between one commit and another (say, yesterday's vs. today's) or between one branch and another.

To start working in git, you need to use the command line and get into your folder: `cd path/to/folder`. Once you are there, make the folder a git repo: `git init`. Then, add all of the files to the project: `git add --all`. Finally, make the commit: `git commit -a -m 'initial commit'`. The rest of the example commands in this project work from the idea that are you in the terminal and in your project

### <a name="workflow">Workflow</a>
My git writing workflow uses two branches: "master" and "drafting." As you might guess, drafting is a workspace, while master is the "best" version of the document or project. Using a second branch is completely optional, but I use it because it a) gives me piece of mind to know I'm not messing around on the master, and b) because it allows for a really granualar level of revision and review for the times when you need or want it. Let me explain:

- At the start of a session, I switch to the drafting branch if I'm not in there already: `git checkout drafting`.
- Now the hard part: [write](http://36hrw115apll2tgpf9vbfhw1.wpengine.netdna-cdn.com/wp-content/uploads/2013/01/DSC_0112-780x521.jpg).
- When I'm done writing, I like to compare the changes I've made against the original—because sometimes I have a tendency to overcomplicate and/or make things worse. With the command `git diff drafting..master`, I can see those changes. If I use the same command with `difftool`, it will open those changes in a nice editor. There are some expensive options like [Kaleidoscope](http://www.kaleidoscopeapp.com/), but ol' reliable [TextWrangler](http://www.barebones.com/products/textwrangler/) also works just fine.

- Once I sort things out, I commit the changes, switch back to my master branch, and merge the changes over.
    + `git commit -a -m 'new prose'`
    + `git checkout master`
    + `git merge drafting`



