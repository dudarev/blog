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

I use vim for more than 12 years, most of the time as my primary editor for text and code. This post is a summary of a short master class for Donetsk Coffee'n'code meeting in December 2013. More experienced vim users should probably go directly to the end to check collection of links.


<!--more-->

## Power of Modes

Quite often I find that it is much more efficient to focus on one task than to multitask and achieve nothing.

For example, here is one singletasking lifehack I use: In a given time, I typically participate in several projects. Last year, I found that it was very effective to create different accounts in my computer OS for such different roles. It did help to make processes much more efficient.

One of the most important concepts for beginners starting to use vim is that working with it we are also switching modes. In a given moment, we are writing, moving arround, searching and so on.  When you embrace this separation into modes it does make text editing more effective.

When we just open vim we are in normal (moving) mode that allows us to move around efficiently. Learn the basic for moving by typing `vimtutor` from command line.

Here are some keys that I currently use for navigation in addition to standard ones quite often: `G` to go to the end of file, `gg` to go to the beginning of file, `zz` for centering. 

Also remember to navigate by words (`w`, `b`) or other text concepts and with search of the current word (`*`, `#`) and search in general (`/`), which can be considered as a separate mode.

Tags are a standard feature of vim. Typically I create Makefile command for each project I work on that creates tags with `ctags -R .`. Navigation between tags: `Ctrl-]`, `Ctrl-T`, `:ts`. Here and in many other cases `:help tags` is your friend.

The easiests way to go into insert (text entering) mode is with `i` key, one can go back with `Esc`, but it is very naive to use just that option. One can start editing from the beginning of line (`I`), from the end (`A`), create an empty line after and before current line and start editing (`O`, `o`), these options are very useful in many cases.


## Editing Language

Do not try to imediately memorize as many keys as possible. Start with very minimum. After some time you will get familiar with more. Try to observe ineficiencies in your use and search for solutions.

Many vim keys are mnemonic, and after some time they will "make sense". For example, similar to `A` that **a**ppends text at the end of the line, there is `a` that appends after the cursor.

Normal mode is not only for navigation but is also good for editing with concepts (words, lines, text objects, paragraphs, marks, motions etc.) And the way one communicates this editing commands is very similar to a language. Vim grammar has a fixed word order:

    <command count><verb><motion count><modifier><object>

Counts and modifiers are not always relevant. So for the beginning you might want to keep a simplier picture in mind:

    <verb><object>

The major *verbs* are `y`, `d`, and `c` (for **y**ank, **d**elete, and **c**hange).

Some motions *objects* are `0`, `$` for beginning and end of line; `f<character>` and `t<character>` for **f**ind the character and **t**ill the character. Normal search with `/` operator also can be used.

*Text objects* can be words (`w`), brackets (`[`, `(`), tags (`t`) etc. Modifiers are `i` and `a` to indicated if we take inner part of the object or the whole object.

Some examples:

* `ct)` - change till the closing parenthesis
* `ci]` - change inside square brackets
* `da]` - delete square brackets
* `"+yit` - copy what's inside a tag to a `+` buffer that corresponds to system clipboard
* `dG` - delete till the end of file

If you install [surround](https://github.com/tpope/vim-surround) plugin:

* `ys3w'` -  surround 3 words  with single parenthesis

And here example in visual (yet another mode) is appropriate: `<Ctrl-V><select text with motion commands>S"` - surround it with double parenthesis.


## The Wisdom of Crowds

Speaking of plugins.

The way plugins are organized is very different nowadays that it was ten years ago. 
Plugin managers such as [Vundle](https://github.com/gmarik/vundle) and [Pathogen](https://github.com/tpope/vim-fugitive)
are used by many.

I keep my settings and plugins in [Github repo](https://github.com/dudarev/dotvim). You may find many more repositories like that.
The process of setting up everything for a new account is described in another [blog post](http://dudarev.com/blog/keep-vim-settings-and-plugins-in-git-repo/).

Here are some plugins that I would like to mention (in the order of use frequency):

* [CtrlP](https://github.com/kien/ctrlp.vim) - fuzzy file finder
* [Fugitive](https://github.com/tpope/vim-fugitive) - git wrapper
* [NERDTree](https://github.com/scrooloose/nerdtree) - file system tree explorer
* [Tagbar](https://github.com/majutsushi/tagbar) - displays tags in a side window for easy navigation
* [Emmet](https://github.com/mattn/emmet-vim) - improves HTML workflow

As with keys, do not try to install many plugins at once and start using all of them. Go incrementally.


## Links

The post above is a summary of a short talk about vim. If you'd like to go deeper, check out links below. They are a compilation of vim-related links from my 
[Wiki](http://dudarev.com/wiki/Vim.html),
[Twitter](http://topsy.com/s?q=vim%20from%3Adudarev),
[Delicious](https://delicious.com/dudarev/vim).
They are in no particular order. More important in my opinion are on top and highlighted in bold.

### Tutorials

* [**VimGolf - real Vim ninjas count every keystroke!**](http://vimgolf.com/) - not quite a tutorial but a lot can be learned by doing the challenges
* [**Vim Text Objects: The Definitive Guide**](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/)
* [The grammar of Vim](http://rc3.org/2012/05/12/the-grammar-of-vim/)
* [A vim Tutorial and Primer](http://www.danielmiessler.com/study/vim/) - a deeper dive

### Cheetsheets

In general I would not recommend to use cheetsheets for learning vim, this one though is well organized.

* [Secrets of the Vim Ninja](http://bencrowder.net/files/vim-fu/) - systematization of keywords

### Personal Experiences

* [**Best of VIM Tips, gVIM's Key Features zzapper**](http://www.rayninfo.co.uk/vimtips.html)
* [**Vim anti-patterns - Arabesque**](http://blog.sanctum.geek.nz/vim-anti-patterns/)
* [**YBlog - Learn Vim Progressively**](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
* [Dr. Bunsen / Writing in Vim](http://www.drbunsen.org/writing-in-vim/) - advices for using vim as word processor
* [Vim After 11 Years - Ian Langworth's Things of Variable Interest](http://statico.github.io/vim.html)
* [An Incremental Approach to Vim - Experiment and Routine](http://ctoomey.com/posts/an-incremental-approach-to-vim/)
* [How I boosted my Vim &raquo; nvie.com](http://nvie.com/posts/how-i-boosted-my-vim/)
* [Luciano Fiandesio - VIM configuration for happy Java coding](http://www.lucianofiandesio.com/vim-configuration-for-happy-java-coding) 
* [List of vim plugins I use - with mini tutorials &middot;  mirnazim.org](http://mirnazim.org/writings/vim-plugins-i-use/)
* [Grokking the Zen of the Vim Wu-Wei &bull; Jeet Sukumaran](http://jeetworks.org/grokking-the-zen-of-the-vim-wu-wei/)

### Video

* [**7 Habits For Effective Text Editing 2.0 - YouTube**](https://www.youtube.com/watch?v=p6K4iIMlouI&feature=youtube_gdata_player)
* [Bare Bones Navigation, by Kris Jenkins on Vimeo](http://vimeo.com/65250028)
* [OSCON 2013: &quot;More Instantly Better Vim&quot; - Damian Conway - YouTube](https://www.youtube.com/watch?v=aHm36-na4-4&feature=youtube_gdata_player)
* [Efficient Text Editing in Vim -- Alan Christopher Thomas -- Show-Me Tech #1 - YouTube](https://www.youtube.com/watch?v=xGqUTtYWAXc&feature=youtube_gdata_player)

### Python

* [**Using Vim as Python IDE**]( https://www.dropbox.com/s/27ud18rrg8md1v0/pythonic_vim.zip ) - PDF slides of talk by [Kostyantyn Leschenko](https://twitter.com/settler_kos) during last OdessaPy, good not only for Python developers
* [Turning Vim into a modern Python IDE](http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide)
* [Vim+Python. Для начинающих / Хабрахабр](http://habrahabr.ru/post/138053/)

### Other

* [.vimrc для фронтендера / Хабрахабр](http://habrahabr.ru/post/206262/)
* [8 Essential Vim Editor Navigation Fundamentals](http://www.thegeekstuff.com/2009/03/8-essential-vim-editor-navigation-fundamentals/)
* [Exuberant CTAGS in OSX 10.7](http://www.runtime-era.com/2012/05/exuberant-ctags-in-osx-107.html)
