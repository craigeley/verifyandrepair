---  
layout: post 
title: "Writing Workflow 2016, Part 2: Citations, Preview, and Export using Zotero, Marked 2, and Pandoc"
author: Craig Eley 
date: 2016-04-13 08:00
tags: [writing, workflow]
---

As I mentioned in [part one](/04-11-2016/writing-workflow-2016-markdown-environment/) of this series, one of the joys of Markdown is that it is a computer language, a kind of code. And as code, it can be interpreted, manipulated, and modified by a variety of programs and tools that make some of the more tedious parts of formatting automatic: clean and correct HTML tags, generating citations and bibliographies, converting to Microsoft Word, etc.

This post is about taking simple, easy to read Markdown and transforming it into something else. Because it focuses so heavily on footnotes and citations, I imagine it will be mostly of interest to other academics, but if you've done any sort of writing for the web, you might also find it useful.

Fair warning: each of these steps and programs I'm going to discuss has a much finer level of detail than I go into here. My goal is not to be exhaustive, but to explain the basic framework I use — both to finally have some personal documention, and to hopefully save one or two people from even a fraction of the Google searches I've done.

### Basic Footnotes and Previewing
Making sense of footnotes and citations in Markdown can be tricky, especially since there are at least two styles of footnotes in widespread use:

- Inline footnotes, which look like this: `[^This is a full footnote.]`
- Reference footnotes, which use a unique identifier that points to a note somewhere else in your document:

        This sentence needs a footnote.[^1] So does this one.[^website]

        [^1]: Here it is.

        [^website]: See [http://verifyandrepair.com](http://verifyandrepair.com)

If you are doing basic writing for the web, or writing something that might only have one or two notes, then either of these methods are fine. I [used to be a nut for reference footnotes](http://verifyandrepair.com/03-23-2013/the-digital-dissertator-markdown-footnote-update/), but now I've come to enjoy inline. Switching between the two — even in the same document — isn't a problem, since most Markdown parsers now recognize both.

Speaking of parsers, if there is one must-have tool in your Markdown toolkit, it's [Marked 2](http://marked2app.com/). Marked is ostensibly a preview window for Markdown files, but it's also much more. It easily converts Markdown to HTML, but it also checks your spelling and grammar, verifies your links are working, exports to a variety of formats, and, as we'll see below, previews your footnotes. It's one of the handful of programs that I have open all day.

[![](http://d.pr/i/19ocg+)](http://d.pr/i/19ocg)
*Sublime Text on the left, Marked 2 on the right. Click to enlarge.*

### Advanced Citation Using Zotero and Pandoc
If you're working on a long document, planning on citing many sources, or using a bibliography, I cannot recommend a citation manager strongly enough. I feel like I've tried them all, and I keep coming back to [Zotero](https://www.zotero.org/). Sure its aesthetic is a bit dated, but it's open source, free, and has extensions that make it a powerhouse little database.

One of those extensions is [Better BibTex](https://github.com/retorquere/zotero-better-bibtex/wiki), which, when paired with the open source tool [pandoc](http://pandoc.org/), allows you to fully automate formatting your citations and bibliographies. All you have to do is insert a citation key into a pandoc-style footnote — yes, this is a third footnoting style — which places the carot on the outside, like so: `^[@aitken76]`. When you go to process that file, your blockquote…

![](http://d.pr/i/17AeY+)

…will magically have a nice footnote and bibliography entry.

![](http://d.pr/i/1lI93+)

For anyone who hates formatting footnotes and bibliographies, this really feels like magic. And while setting this up requires a bit of legwork up front, the payoff is worth it. 

First, install Zotero, pandoc, and Better BibTeX (BBT) if you haven't already. BBT will automatically create a "Citation Key" for every item in your Zotero library—you can even set the format for this key in the preferences. While you're in the preferences, make sure to also set BBT to do an automatic export:

[![](http://d.pr/i/130I2+)](http://d.pr/i/130I2)
*This creates a master bibliography file and keeps it updated.*

Now you have two things: a set of master citation keys in Zotero and a master bibliography file. When the time comes to export your final draft to Word, PDF, or whatever, you can use Pandoc to parse your files, find the references, and insert them into the finished document.

### Rocking the Pandoc
Pandoc is an incredibly powerful little command-line utility, but it's just that: a command line utility. That makes it a little tricky, but as you'll see, you can also use it in Marked 2 without ever going to the terminal.

The nice thing about command line utilities is that they follow a formula. In the case of pandoc, you give it a file to read and tell it what you want it to output. So, at the most basic level, you can run this command: `pandoc test1.md -o test1.docx`, which takes your Markdown file and makes it into a Word document.

For our situation, though, we're going to need to add three variables to that basic formula: one that tells pandoc to look for citations, one that points it to the bibliography file, and  one that points it to a citation style.

- To have pandoc look for citations, you include a filter: `--filter pandoc-citeproc`
- To add the bibliograpy: `--bibliography=/path/to/bibliography` (replacing that with the actual path to your file, of course!)
- Citation styles languages (CSLs) are the files that set style parameters, and they're based on common guides: Chicago, APA, etc. There's a CSL for pretty much every style out there, and you can find them in [this repo](https://github.com/citation-style-language/styles). Download one, save it somewhere, and point to it just like the bibliography: `--csl=/path/to/style-file.csl`

Putting this all together, you get this:
`--filter pandoc-citeproc --bibliography=/path/to/bibliography.bib --csl=/path/to/style-file.csl`

Our super basic conversion from before would now look like this in the terminal: `pandoc --filter pandoc-citeproc /path/to/file.md  -o /path/to/output.docx --bibliography=/path/to/bibliography.bib --csl=/path/to/chicago-note-bibliography.csl`[^164122111]

That's a long script, but keep in mind that you can drag and drop files into the terminal, saving you the headache of typing out those paths. And since as many as three of those outputs might stay consistent (output file, bib file, csl file), then you could also save the string somewhere and just copy it in when you need it.

You can also use this system *within* Marked 2, and never have to touch the command line. You can add pandoc to Marked as a "preprocessor" which Marked will use to parse the file before it uses its own Markdown processor.

To do that, go to the "Advanced" tab of Marked's settings. There, enable the custom preprocessor, and add the full path to your pandoc installation (hint: type `which pandoc` in the terminal), and then add our string from up above. That will give you the full citation information in your previewed documents — which, again, you can export directly from Marked without ever having to go the command line.

[![](http://d.pr/i/QvT4+)](http://d.pr/i/QvT4)
*The preferences in Marked 2.*

At times, pandoc can feel both extremely simple and hopelessly complex, and there are many variations of settings (include export templates) that I just didn't cover here. Please feel free to comment if you have questions, are stuck, or want to share how you do this in a more elegant manner.

Up next, in the final installment in this series, I'll talk (hopefully more briefly!) about using `git` for file management and version control.

[^164122109]: Or not. I often use a Chicago style variant that allows for a shorter footnote as long as it references a full entry in the bibliography, but your footnote could actually include the full entry. That's a style choice that's up to you, as I'll explain below.

[^164122111]: The output file doesn't have to end in .docx. For example, if you want a PDF, just change it to .pdf.