---
layout: post
title: "Powers of Vim"
date: 2013-12-21
comments: true
categories: vim
---


<figure>
<a href="http://www.flickr.com/photos/kent-chen/6825667892" title="ADM-3A Keyboard">
<img src="http://dudarev.com/i/adm-3a-keyboard-500-277.jpg" width="500" height="277" alt="ADM-3A Keyboard">
</a>
<figcaption>
ADM-3A Keyboard
Photo by <a href="http://www.flickr.com/photos/kent-chen/">Kent Chen</a>.
</figcaption>
</figure>


> Do you want to process words or edit text?

I use vim for more than 12 years, most of the time as my primary editor for text and code. This post is a summary of a short master class for Donetsk Coffee'n'code meeting in December 2013. Experienced vim users may find collection of links at the end useful.


<!--more-->

## Power of singletasking

Quite often I find that it is much more efficient to focus on one task than to multitask and achieve nothing.

For example, here is one singletasking lifehack I use: In a given time, I typically participate in several projects. Last year, I found out that it was very effective to create different accounts in my computer OS for such different roles. It did help to make processes much more efficient.

One of the most important concepts for beginners starting to use vim is that working with it we are also switching modes. In a given moment, we are writing, moving arround, searching and so on.

When we just open it we are in normal (moving) mode that allows us to move around efficiently. Learn the basic for moving by typing `vimtutor` from command line.

Here are some keys that I currently use for navigation quite often: `G` to go to the end of file, `gg` to go to the beginning of file, `zz` for centering. 

Also remember to navigate by words (`w`, `b`) or other text concepts and with search of the current word (`*`, `#`) and search in general `/`, which can be considered as a separate mode.

Tags is a standard feature of vim. Typically I create Makefile command for each project I work on that creates tags with `ctags -R .`. Navigation between tags: `Ctrl-]`, `Ctrl-T`, `:ts`. Here and in many other cases `:help tags` is your friend.

The easiests way to go into insert (editing) mode is with `i` key, one can go back with `Esc`, but it is very naive to use just that option. One can start editing from the beginning of line (`I`), from the end (`A`), create an empty line after and before current line and start editing (`O`, `o`), these options are very useful in many cases.


## Editing Language

Many keys are mnemonic, and after some time "make sense". For example `a`, `A`, `5g`.

Moreover, a very powerful concept of vim is *text objects*.

Text groups.

Surround plugin. Visual mode


## The Wisdom of Crowds

Image with updates to my `dotvim` repo.

F8.

Ctrl-P.

NERDTree.

Fugitive. Gbrowse. `:set nu`

Emmet.


## Links

Check my delicious, catch, keep, wiki. Structure with subheadings.

[.vimrc для фронтендера / Хабрахабр](http://habrahabr.ru/post/206262/)

[8 Essential Vim Editor Navigation Fundamentals](http://www.thegeekstuff.com/2009/03/8-essential-vim-editor-navigation-fundamentals/)

pythonic vim from odessa.py

[Exuberant CTAGS in OSX 10.7](http://www.runtime-era.com/2012/05/exuberant-ctags-in-osx-107.html)
