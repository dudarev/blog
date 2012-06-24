---
layout: post
title: "Hello, CyanogenMod"
date: 2011-09-22 12:45
comments: true
categories: 
meta: false
---

<figure>
<a href="http://www.flickr.com/photos/johanl/4893436057/" title="CyanogenMod 6 by Johan Larsson, on Flickr"><img src="http://farm5.static.flickr.com/4134/4893436057_50ef37e85a.jpg" width="500" height="333" alt="CyanogenMod 6"></a>
<figcaption>
Boot screen of CyanogenMod. Photo by <a href="http://www.flickr.com/photos/johanl/4893436057/">Johan Larsson</a>.
</figcaption>
</figure>

Google Nexus One with Android Gingerbread failed me. The phone simply stopped booting. [Roman Bolgov](https://plus.google.com/117936857669829273797/posts) successfully converted a few local friends to [CyanogenMod](http://www.cyanogenmod.com/), a custom firmware based on Android. I resisted because I wanted to have a native Google experience on my phone. The time came to try CyanogenMod.
<!--more-->

One of the main reasons to stay on native Google software was to be able to automatically receive updates. Nexus One is currently a generation behind from the most advanced Android smartphones. The main reason for the failure, I think, was relatively small size of internal memory of the phone (192 Mb). Since the previous version of Android it was possible to move apps to SD card, and all the apps that could be moved in my case were moved. This did not help, the phone was getting slow and eventually stopped booting.

Installing CyanogenMod (CM) is a quest. One may simply just follow the instructions from [CM wiki](http://wiki.cyanogenmod.com/wiki/Main_Page), but some instructions are not very clear and require some googling. For technical details please refer to [my wiki](http://dudarev.com/wiki/Android.html).

After the installation the quest continues. Here are just two peculiarities (there are more, see the wiki):

After some time black screen appears when going to additional screen inside of apps. [The solution](http://forum.cyanogenmod.com/topic/21407-google-issue-tracker-15135-blank-screen/) requires flashing with updated version of one library.

[OI File Manager](https://market.android.com/details?id=org.openintents.filemanager&feature=search_result) cannot be updated from the market, because CM image has an old version. One may, as recommended in the app description, delete old version from terminal on the phone

{% codeblock lang:bash%}
su
mount -o rw,remount /system
rm -f /system/app/FileManager.apk
pm uninstall org.openintents.filemanager
{% endcodeblock %}

This reminds old days of Linux. Then I've heard a saying: "With Linux you may compile everything, and you *will* fucking compile everything."

Still, I may highly recommend an advanced user to consider trying CyanogenMod. Some things there are more convenient and more customizable, ability to move more apps to SD card for one. Just do not forget to backup info from the phone memory if you have a chance. I lost some non-critical data, and grateful to [AppBrain](http://www.appbrain.com/) that it stores the list of apps one uses (it also gives good recommendations and recently introduced ability to push wallpapers from the web).
