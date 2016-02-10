---
published: true
title: Site mirroring
layout: post
tags: [rxjava, offline-site, wget]
categories: [2016]
---
From time to time I need to flight. During last flight I implemented a part of application with rxjava library and after a while I've realized: I forgot how ["window"](http://reactivex.io/documentation/operators/window.html) operator works.

Silly, isn't it? Fortunately rxjava source code is well documented. I went into source code, read comments and got impression about ["window"](http://reactivex.io/documentation/operators/window.html) usage - that was easy. Still, the window's marble was missing - missing when I'm unable reach internet. There is a link inside the comment pointing to the image stored on internet.

I wish to see the marble and  I stared thinking how to mirror reactivex.io/docs page. There are different tools on the market and once again I didn't have internet access so... I started browsing tools already present on my laptop. I one of the first was wget. I read its manual and voile solution was there.

wget is awesome. Simple:

```
wget --mirror --backup-converted --convert-links --adjust-extension <page_url>
```

is able to completely mirror a webpage.

You may guess, what I did, when I finally appeared in WiFi area :)
