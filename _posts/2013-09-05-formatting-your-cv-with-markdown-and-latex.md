---
layout: post 
title: Formatting Your CV with Markdown and LaTeX 
date: '2013-09-05T09:46:00-04:00' 
tags: 
- markdown 
- formatting 
- CV 
redirect_from: /post/60358551339/formatting-your-cv-with-markdown-and-latex/
image: /images/radio-purple.jpg
---

Yesterday’s [open thread post](http://chronicle.com/blogs/profhacker/open-thread-wednesday-best-cv-formats/52021) on Profhacker was just the kick I needed to write this post on my CV workflow, which I developed last fall as I was dipping my toe into the job market. “Developed” is actually overstating it, since I just took the same approach I use for all of my academic writing: [Markdown](/post/45896860184/the-digital-dissertator-academic-writing-and).

CVs are one of the rare instances in my life that I feel a desire to get fancy with PDF formatting, but formatted documents created by word processors like Microsoft Word or Apple Pages can get garbled across systems or when trying to convert to other formats. By keeping my CV in a plain text Markown document, I can easily update it on the fly from my phone or tablet, and also quickly convert it to PDF or HTML. This allows me to keep a master file of relevant information that is independent of my formatting choices, so that I can change either without effecting the other.

### Writing it up

Writing your CV in Markdown is as simple as grouping things into categories and creating lists. As per [Markdown syntax](http://daringfireball.net/projects/markdown/syntax), headings are grouped using the hash (“\#”) character at the beginning of a line, with more hashes signifying sections and subsections. And lists can be made using a simple dash or an asterisk. So, for example, the beginning of my plain text CV file looks like this:

	### Education 

	- Ph.D.   American Studies, University of Iowa, 2013 
	- M.A.    American Studies, University of Iowa, 2010 
	- B.Phil.  Interdisciplinary Studies, Miami University, 2004 
	- B.A.     American Studies, Miami University, 2004

	#### Research Interests 

	History of recorded sound; American environmental history; history of science and technology; theories of sound, listening, and the voice; American cultural history; green cultural studies and ecocriticism; sound art and experimental music; public and digital humanities

	### Current Position 

	- 2013-14: Postdoctoral Fellow, Institute for the Arts and Humanities, Penn State University

Note that I have “Research interests” filed as a subsection of education, with an additional hashtag in front of it. Obviously, you can create as many categories and subcategories as you need.

### Laying it Out

Once you have your CV all written out, then you’ll likely want to convert it to other formats. The two I most commonly use are HTML (for web display), and PDF (for sending applications out to committees). HTML conversion can be handled by any number of programs, including text editors like [Byword](http://bywordapp.com/), Markdown-specific viewers like [Marked](http://markedapp.com/), and command-line utilities like [Pandoc](http://johnmacfarlane.net/pandoc/). Some blog and hosting platforms can also take direct Markdown input and convert it to HTML for you. [Tumblr](http://www.tumblr.com/) is one such service, so I actually generate the [CV on this site](/cv) by simply copying and pasting my Markdown CV into that page.

Converting to PDF can be slightly more complicated, but only if you want it to be. Again, applications like Byword, Marked, and Pandoc can generate PDFs for you with the click of a button (or a line of a code, in Pandoc’s case). However, you can also convert your document via LaTeX, a high-powered typesetting language traditionally used by people in the sciences that seems to be increasingly popular with writers and humanities nerds. Just like when converting to HTML, the first step is use one of the above programs to convert your Markdown into LaTeX. (You also need to [install](http://tug.org/mactex/) LaTeX on your system.)

Once you have that raw LaTeX file, you need to create a “header,” a string of code that tells LaTeX what you want your document to look like. The way I’ve learned LaTeX is the same way I’ve learned any other language: by stealing pre-existing code and tinkering with it to see what it does. In this case, I started with [this website](http:/nitens.org/taraborelli/cvtex) that I was directed to by [Matt Thomas](https://twitter.com/mattthomas). Many of those examples included inputting actual LaTeX language into your document, which I did not want to do. So, with some tinkering, here is the header I came up with (this looks scarier than it is):

	%!TEX TS-program = xelatex
	%!TEX encoding = UTF-8 Unicode

	\documentclass[11pt, a4paper]{article}
	\usepackage{fontspec} 

	% DOCUMENT LAYOUT
	\usepackage[margin=1.2in]{geometry} 
	\setlength\parindent{0in}

	% Reduce spacing in itemize, enumerate and titles
	\usepackage{multicol}
	\usepackage{enumitem}
	\setenumerate{nolistsep}
	\setitemize{nolistsep}

	% FONTS
	\usepackage{xunicode}
	\usepackage{xltxtra}
	\defaultfontfeatures{Mapping=tex-text} % converts LaTeX specials (quotes'' --- dashes etc.) to unicode
	\setromanfont [Ligatures={Common}, Numbers={OldStyle}]{Hoefler Text}
	\setmonofont[Scale=0.8]{Monaco} 
	\setsansfont[Scale=0.9]{Optima Regular} 

	% HEADINGS and TITLES
	\usepackage{sectsty} 
	\usepackage[normalem]{ulem} 
	\sectionfont{\sffamily\mdseries\large\underline} % Underlines headings
	\setcounter{secnumdepth}{-1} % Removes the numbers before sections
	\subsectionfont{\rmfamily\mdseries\scshape\normalsize} 
	\subsubsectionfont{\rmfamily\bfseries\upshape\normalsize} 

	\usepackage{titling}


	\setlength{\droptitle}{-90pt} % The negative number moves the title closer to the top of the page
	\title{Craig Eley} % put your name here
	\author{101 Easy Street \textbar{} State College, PA 16802\\ %Put your address here
	(111) 555-5555 \textbar{} name@service.com } % put your contact information here
	\date{} % Leave blank to remove the date

	% BEGIN DOCUMENT
	\begin{document}
	\maketitle
	\begin{raggedright}

If you’re just getting started, copy and paste this whole thing and see if it works for you. From there, tweak it out and experiment. I actually have this entire thing copied into a TextExpander snippet, so I can simply insert it at the beginning of my document and hit “typeset.”

Here are the final results, as well as all of the documents for comparison and download purposes:

-   [Original plain-text CV](http://d.pr/lFcc) 
-   [HTML](http://d.pr/jT4f) 
-   [TeX file](http://d.pr/cBFV) 
-   [Formatted PDF](http://d.pr/Xd6G)

I would love to hear any questions, feedback, or tips.

