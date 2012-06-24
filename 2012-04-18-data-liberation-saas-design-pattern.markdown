---
layout: post
title: "Data Liberation SaaS Design Pattern"
date: 2012-04-18 13:00
comments: true
categories: 
---

<figure>
<a href="http://www.dataliberation.org/" title="Data Liberation Front logo"><img src="/images/Google-Liberation-Front_logo.png" width="525" height="490" alt="VIM"></a>
<figcaption>
Google Data Liberation Front logo. Source: <a href="http://en.wikipedia.org/wiki/File:Google-Liberation-Front_logo.png">Wikipedia</a>.
</figcaption>
</figure>

This post is a copy of my entry for [Grammarly](http://www.grammarly.com/) contest, where they asked to suggest any feature for any software as a service (SaaS) application. 
In the proposal I described a hypothetical feature for Bing Maps to easily navigate to other mapping services.
It was selected amongst ten other runner-ups. 
As a prize, I received Grammarly subscription for a year. I do use it occasionally and find rather useful.

<!--more-->

## Feature proposal

This is a spec for a feature in Bing Maps for the contest announced at [DOU](http://dou.ua/lenta/news/grammarly-contest/?from=miniheader).

Yandex search engine has a killer feature -- at the bottom of every
page, it links to related searches by competitors, Google and Bing.
Consider [searching for Grammarly](http://yandex.ua/yandsearch?text=grammarly&lr=142). At the very bottom of the page, you see a line:

    Поискать <<grammarly>> в других поисковых системах: Google Bing

This open-mindedness adds a lot of value for Yandex users. Check out
for yourself that there are a few differences in first ten results
from all three search engines. Such a feature is for power users.
These are just type of users that could potentially become die hard
fans of the service. Existence of this feature gives them more excuses
to use this particular service and not others, because they know that
they could very easily check other similar services too.

A general pattern "See in similar service" may be considered.
Implement a feature that allows your users to take data from your
service and use it in others. There are some parallels with 
[The Data Liberation Front](http://www.dataliberation.org/) initiative from Google.
Many reasons may be named for a SaaS team to follow initiatives like
that, the most important is arguably to develop trust in its users.
Also, features like this give power user good opportunity to
evangelize the service to simple users, which is very important in our
age of social media.

To be specific, we describe a spec for a feature to allow users of a
web map service to navigate to the same view from other map providers.
This may be a payed service to monitor positions of vehicles fleet. To
have a common ground, we consider Bing Maps: <http://www.bing.com/maps/>

**1. Implement in Preferences a possibility to activate feature "See in
other web maps".**

When a user clicks Preferences in top right corner, she goes to
account settings. In addition to General, Web, News that are there
now, there is an option for Maps on sidebar. Checkbox allows to select
an option "See in other web maps" (not selected by default).

**2. Implement a menu option to follow links to other map providers.**

It should be similar to Share and placed closely to it. Its behavior,
when clicked, is also similar. A pop up with links appears, a user may
follow the links that open in new tabs.

This approach seems intuitively the most suitable for me in this case
at the moment, but surely other user interfaces could be considered
and tested by users of the service:

2a. A menu with down pointing triangle next to a figure of a man
allows to select a map provider to jump to from a drop-down menu.

2b. When a user makes right mouse click there is a new menu item that
allows to select an option to see the current view from another map
provider.

I am developing a Chrome extension Mapjumper which interface is
similar to 2a described above:

<http://dudarev.github.com/mapjumper/>

Hopefully, this pattern could be useful for Grammarly too. Your
service is rather unique, yet, you probably still could make it much
easier for your users, for instance, to look up definitions from other
online dictionaries. Or, further following Google's DLF, constantly
add more services from which text could be imported (Google/Microsoft
Docs, blogs, tweets and so on).
