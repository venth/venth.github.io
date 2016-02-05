---
published: true
title: Site mirroring
layout: post
tags: [rxjava, offline-site]
---
From time to time I need to flight. During last flight I implemented a part of application with rxjava library and after a while I've realized: I forgot how "Window"]operator works.

Silly, isn't it? I went to source code, read comments and got impression - that was easy. Still, the window's marble was missing. There is a link inside the comment pointing to the image stored on internet.

Then I stared thinking how to mirror reactivex.io/docs page. There are different tools on the market and once again I didn't have internet access so... I started to read wget manual.

wget is awesome. Simple:
- wget --mirror --backup-converted --convert-links --adjust-extension <page_url>
is able to completely mirror a webpage.

You may guess, what I did, when I finally appeared in WiFi area :)