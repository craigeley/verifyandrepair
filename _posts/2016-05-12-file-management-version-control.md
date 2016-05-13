---  
layout: post 
title: "Writing Workflow 2016, Part 3: File Management and Version Control"
author: Craig Eley 
date: 2016-05-12 07:00
tags: [writing, workflow, git]
---
*This is the third part in a series about my 2016 writing workflow. See part 1 [here](http://verifyandrepair.com/04-11-2016/writing-workflow-2016-markdown-environment/) and part 2 [here](http://verifyandrepair.com/04-13-2016/citations-export-preview/).*

By far the biggest revelation for my plain text writing workflow has been `git`. Git is a powerful command line utility for version control, perhaps best known as the basis for the code-sharing platform [GitHub](https://github.com/) — though you don't need to use GitHub to benefit from a git workflow. For our purposes, git's strength is its ability to keep track of and compare multiple drafts of a project. If you have ever had a folder that includes files like "essay_version1," "essay_version2," etc., then you already know the basics of version control. Git handles that process for you, making it both more seamless and more effective.

If you already know git, you can [skip down to my implementation](#workflow). If you're a total newbie, then feel free to read on.

Git works best when you keep your writing projects divided into project folders. Back when I discovered the ["alternate" version of Notational Velocity](http://brettterpstra.com/projects/nvalt/), I went nuts and decided all of my documents should exist in a single folder. But once I discovered git (and stopped worrying that iOS meant [the death of the filesystem](http://www.fastcompany.com/3007889/how-one-new-service-tackling-death-file-system)), I reverted back to using folders – and embraced their [skeuomorphism](http://tumblr.austinkleon.com/post/58625662398). Anyway, once you have that project folder, you're ready to start using git.

### Overview
Git can be as complex and you want to make it, and computer programmers have their own complicated thoughts on the best ways to work with it. But since we're using git for writing, we can stick to the basics. Here are some key terms:

- **Repo**: git projects (in our case, project folders) are called repositories, or "repos" for short
- **Branches**: each repo can contain multiple "branches," separate threads of the project that allow you to work on something without worrying that you will ruin what you already have. While this applies mainly to coding, it can also be an important tool for writing.
- **Commit**: When you commit something to git, you're taking a snapshot of everything in the folder as it is right at that moment. You also leave a little note, called a commit message, that helps you remember what's new or what's changed.
- **Diff(tool)**: to "diff" in git means to compare the differences between two different versions of your project. This can be between one commit and another (say, yesterday's vs. today's) or between one branch and another.

To start working in git, you need to use the command line and get into your folder: `cd path/to/folder`. Once you're there, make the folder a git repo: `git init`. Then, add all of the files to the project: `git add --all`. Finally, make the first commit: `git commit -a -m 'initial commit'`. The rest of the example commands in this post work from the idea that are you working in your project folder from the command line.

### <a name="workflow">Workflow</a>
My git writing workflow uses two branches: "master" and "drafting." As you might guess, drafting is a workspace, while master is the "best" version of the document or project. Using a second branch is completely optional, but I use it because it a) gives me piece of mind to know I'm not messing around on the master, and b) because it allows for a really granular level of revision and review for the times when you need or want it. Here's my process:

- At the start of a session, I switch to the drafting branch if I'm not in there already: `git checkout drafting`. If you need to create that branch, it's `git checkout -b drafting`.
- Now the hard part: [write](http://36hrw115apll2tgpf9vbfhw1.wpengine.netdna-cdn.com/wp-content/uploads/2013/01/DSC_0112-780x521.jpg).
- When I'm done writing, I like to compare the changes I've made against the original and decide what to keep. I have a tendency to overwork a section, complicating it and/or making things worse. With the command `git diff drafting..master`, I can see everything I changed in a writing session and compare it to the "master" version. If I use the same command with `difftool`, it will open those changes in your editor. There are some expensive difftools like [Kaleidoscope](http://www.kaleidoscopeapp.com/), but ol' reliable [TextWrangler](http://www.barebones.com/products/textwrangler/) also works just fine.

[![](http://d.pr/i/1cAzr+)](http://d.pr/i/1cAzr+)
*I'm diffing this blog post right now!*

- Once I have my revisions sorted out, I commit the changes, switch back to my master branch, and merge the changes over.
    + `git commit -a -m 'new prose'`
    + `git checkout master`
    + `git merge drafting`

That's all there is to it. Well, that's actually the surface of what there is to it, but hopefully it's enough to get you started. I would love to hear any more tips about how to use version control for writing workflows in the comments, or on [Twitter](http://twitter.com/craigeley).