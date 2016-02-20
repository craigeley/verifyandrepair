---
layout: post
title: 'The Digital Dissertator: Academic Writing (and Footnoting) in Markdown'
date: '2013-03-21T01:30:00-04:00'
tags:
- digidiss
- markdown
redirect_from: /post/45896860184/the-digital-dissertator-academic-writing-and/
redirect_to: http://verifyandrepair.com/03-21-2013/the-digital-dissertator-academic-writing-in-markdown
---
![Writing](http://fieldnoise.com/diss/images/writing.jpeg)

The virtues of writing in plaintext documents using Markdown syntax are many: you can work in virtually any writing program on any platform, you can sync your work to all of your devices, and you can easily convert it to any format you might need (including .doc and .docx, if you must). Before you get to all of those things, though, you have to start writing in it, which, as [this post](http://chronicle.com/blogs/profhacker/markdown-the-syntax-you-probably-already-know/35295) observes, you probably already know how to do. On a day-to-day basis, most writers in the humanities probably don't need more complex text formatting than *italics* or **bold** anyway, which Markdown handles with asterisks: one on each side for italics, two on each side for bold. Read more about the basics [here](http://daringfireball.net/projects/markdown/syntax).

For me the biggest hurdle to writing full-time in Markdown was the most important piece of formatting in the academic world: footnotes. But thanks to an extension called [MultiMarkdown](http://fletcherpenney.net/multimarkdown/) (or MMD for short), you can add footnotes to Markdown documents. MultiMarkdown functions are built into most Markdown editors and translators, though initially I found the implementation difficult to work with.

The problem is that MMD's footnoting device [(outlined in this guide)](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide) is based on identifiers which *must* be unique. This makes keeping track of them unwieldy at best, and almost unusable for writers working in a nonlinear fashion or tackling long-form projects. For example, the footnote represented as "\[^1]" in your document must reference a corresponding note, like so:

\>MultiMarkdown is pretty cool.\[^1]

\>\[^1]:Eley, 1.

When converted to PDF, HTML (like in this blog post) or pretty much any other format, it will look like a nice little footnote:

\>MultiMarkdown is pretty cool.[^1]

While I count "counting" among my skills, I found sequential numbers almost impossible to keep track of at a certain point, especially for a long project like my dissertation. Another possibility, I initially thought, was to use author names, since footnote identifiers in MMD don't have to be numerical. An identifier could be something like "[\^Eley]," but if I cite that source more than once I would again need to make it unique, such as "[\^Eley2]," and if I was citing more than one text from the same author, the headaches would compound. At this point the whole thing was starting to feel like a hassle, which was the exact opposite of what I was looking for in plaintext writing.

To solve this problem, I started using [TextExpander](http://smilesoftware.com/TextExpander/), a brilliant program which can take a few keystrokes and turn them into a longer string of words or characters. Fair warning, it's [not cheap](http://itunes.apple.com/us/app/textexpander-for-mac/id405274824?mt=12) at \$35 (+\$5 for the [iOS version](http://itunes.apple.com/us/app/textexpander/id326180690?mt=8)), but it is totally worth it, not just in this situation but in [plenty others](http://smilesoftware.com/TextExpander/screencast/index.html).

Once you've got TextExpander, you can use it to eliminate the mechanical and mental hassles of MMD footnoting by automatically creating the brackets, carats, colons, and unique identifiers by way of its timestamp feature. Here is the "snippet" I use to create a footnote:

\>[^%y%1m%e%1H%1M]

\>[^%y%1m%e%1H%1M]:

Now, by using the keystroke "ffn," a timestamp code down to the minute is used to identify my footnote, meaning that as long as I don't create a new footnote in the next 60 seconds, it will remain unique and not conflict with any other footnote I generate—ever. (You could make this timestamp down to the second, by the way, but who needs to generate more than one footnote per minute? Stop and take a breath.) While the string does end up being kind of long, you'll quickly get used to it in your writing and editing process. Hopefully you can get a sense for how easy this is by looking at it in action [in this video](http://www.youtube.com/watch?v=5D-im8ITyzo), using the [Byword](http://bywordapp.com/) text editor, which has a built-in Markdown preview.

I'd love to hear your thoughts on this workflow in the comments, or answer any questions, or hear about other ways you've come up with to handle footnoting in MMD.

**Update**: After originally writing this post, I came across Brett Terpstra's [Markdown Toolkit](http://brettterpstra.com/projects/markdown-service-tools/). Among its many useful scripts in one that can scan your documents and make your footnotes unique. How does it work? Using a timestamp. Check it out and download everything [here](http://brettterpstra.com/projects/markdown-service-tools/).

******

[^1]: Eley, 1