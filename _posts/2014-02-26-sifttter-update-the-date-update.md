---
layout: post 
title: 'Sifttter Update: The Date Update' 
date: '2014-02-26T10:00:17-05:00' 
tags: 
- sifttter 
- logging
redirect_from: /post/77908985251/sifttter-update-the-date-update/
image: /images/radio-pink.jpg
---

[Sifttter](https://gist.github.com/craigeley/8301817) has always been about "set it and forget it" use—running silently every single night with minimal fuss and zero user interaction. But *by far* the most common request I've gotten is to easily create entries for different dates. There are a ton of reasons you would want to do this, especially if your primary computer is a laptop that might be closed or off at the time the script is scheduled to run. I would kludge this by force-changing my computer's date, in part because I wasn't confident in my ability to code a more complex date range function.

Enter [Paul Hayes](https://twitter.com/fofr), who Tweeted at me two weeks ago to show me how he had modified Sifttter to create straightforward Markdown files over user-specified date ranges. You can see his super useful script [here](https://gist.github.com/fofr/8922295). I added Paul's elegant solution for command-line date ranges so that you can generate nice Day One entries for any old day that you choose. Here are the options:

-   `-d, --date DATE,   'Date to generate - Any parseable date string'`
-   `-s, --start START, 'Start date - Use with end to generate a range of dates'` 
-   `-e, --end END,     'End date - Use with start to generate a range of dates'`

So a potential use would look like `ruby /path/to/sifttter.rb -s "2014-02-01" -e "2014-02-26"`

I've used this occasion to bump Sifttter to version 1.5, which was a totally arbitrary choice. Honestly, this improves the use-cases for Sifttter so dramatically it feels like a 2.0. I'm glad I'm not an actual software developer who has to worry about that sort of thing.

Good luck everyone, and happy logging—let me know if something breaks or goes terribly wrong on your end. Download the script [here](https://gist.github.com/craigeley/8301817), and read the original post about how to set things up [here](http://craigeley.com/post/72565974459/sifttter-an-ifttt-to-day-one-logger).