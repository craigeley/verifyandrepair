### My Logging Workflow 2016

Taking the time to think through and document my current [writing workflow](http://verifyandrepair.com/04-11-2016/writing-workflow-2016-markdown-environment/) felt like a fun and productive exercise, so I thought I would also try to tackle some of the other systems I work with on a regular basis. So over the last week I've been revisiting and revising how I create a semi-automated journal in Day One.

By far the most popular post on this site is my ["Sifttter" project](add link here), a small script that reads from a series of Dropbox files and creates an entry in Day One. I wondered if the release of the oddly named Day One 2 with direct IFTTT integration would render that project superfluous, but I've found that I actually rely on it and Day One "Classic" more than ever.[^At some point I might tackle a review of the new Day One, but suffice it to say right now I think it still feels like an immature product.] Some of the reasons are technical—I still like the Dropbox/text files database system—and some of them are aesthetic—I also still like collecting the day's entries into a single post rather than dozens of microentries.

That said, I've always worried that the Siftter approach to journaling wasn't particularly "data rich." I often supplemented and cleaned the raw data from the Dropbox files within Day One, which made Day One the master reference source. Because the information was then collated into a single entry, going back to re-parse it all, or look at it in new ways, sort it, visualize it, etc., would be a real pain. Not impossible, but a real pain.

At the same time, I've also been using [Moves](https://www.moves-app.com/) to track my whereabouts, but never bothered to cross-reference that with the Dropbox data or figure out how to bring it into Day One in a meaningful way.

So, at least for the time being, I added an intermediary step: the creation of a "master" CSV file that collects the data from Dropbox and then gets geotagged with information from Moves. It's during this step that I clean up the data, and then once that is done I pull it into Day One. The results are visually identical in Day One, but the creation of that master spreadsheet accounts for the possibility of moving/formatting that data in other ways.

Additionally, just for some visual interest, I started using [`elizabeth`](get link) to pull in a little map of where I've been today as the entry's image. When all is said and done, here's what it looks like:

{>>Insert Image<<}

To get this to work, here is my basic workflow:

1. Run [this script](get link) to comb through a folder of Dropbox files and look for completed entries
2. Review and clean the data as needed 
3. Run [this script](get link) to take that data and mix it down into a Day One file.

Et voila! Would love to hear any questions or other logging workflows that people are using in the comments.