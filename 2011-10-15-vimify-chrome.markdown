---
layout: post
title: "Vimify Chrome"
date: 2011-10-11
comments: true
categories: vim
meta: false
---

<figure>
<a href="http://www.flickr.com/photos/dragon762w/4702513215/" title="Anticipación by dragon762w (not much time right now), on Flickr"><img src="http://farm5.static.flickr.com/4036/4702513215_33dd176b5e.jpg" width="300" height="500" alt="Anticipación"></a>
<figcaption>
Anticipación. Photo by <a href="http://www.flickr.com/photos/dragon762w/">dragon762w</a>.
</figcaption>
</figure>

For text editing and programming I prefer [vim](http://www.vim.org/). I miss its shortcuts in other applications. Extensions help to bring some of them to browsers.

<!--more-->

With Firefox I had tried [Vimperator](http://vimperator.org/), but it changes the browser too much, so I've abandoned it.

At the moment I mostly use Chromium browser with two vim-related extension: [Vimium](https://chrome.google.com/webstore/detail/dbepggeogbaibhgnhhndojpepiihcmeb) and [TextAid](https://chrome.google.com/webstore/detail/ppoadiihggafnhokfkpphojggcdigllp).

Vimium introduces vim keyboard shortcuts but it is not as intrusive as Vimperator. This way I may easily switch between keyboard and mouse navigation when one feels more convenient than another. Many sites (Gmail, Google Reader, Github, Twitter...) now have keyboard shortcuts, Vimium allows selectively disabling its shortcuts for sites like that. This in my muscle memory now that if I want to go to the next tab I press `gt`, `gT` for previous tab (conventional shortcuts in gvim). Sites for which Vimium is disabled brake the flow. I guess, I just have to train myself to use Chrome shortcut `Ctrl+Tab` to go to the next tab then.

TextAid allows to edit text in textareas with external editors. I keep many notes in wikis and do not bother to keep the text short, as a result, it is not always convenient to find a place I wanted to edit. When the text is opened in gvim this is very easy to navigate to a point for editing with conventional search. The notes are in various formats (Markdown, reStructuredText, Textile), so I have to run `:setf markdown` and so on when the editor is launched. The architecture of Chromium does not allow to call external commands due to security reasons, a local server needs to be started. I use the Perl server mentioned in the settings and included the command that starts it on the background in `.profile` file so that it starts when the OS is loaded:

{% codeblock lang:bash%}
$HOME/edit_server.pl &
{% endcodeblock %}

One may navigate to a desired textarea with Vimium by pressing `f+(textarea id)`. I associated `Alt+a` shortcut to call the editor with TextAid.
