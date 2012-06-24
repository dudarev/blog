---
layout: post
title: "Keep Vim Settings and Plugins in Git Repo"
date: 2012-01-26 13:00
comments: true
categories: 
---

<figure>
<a href="http://www.flickr.com/photos/thomashawk/2208830522/" title="VIM by Thomas Hawk, on Flickr"><img src="http://farm3.staticflickr.com/2135/2208830522_734c3759fb.jpg" width="500" height="327" alt="VIM"></a>
<figcaption>
VIM. Photo by <a href="http://www.flickr.com/photos/thomashawk/">Thomas Hawk</a>.
</figcaption>
</figure>


To have my vim settings easily available I followed [instruction](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) in one of the vimcast posts and set up a [dotvim repository](https://github.com/dudarev/dotvim) on Github. 

<!--more-->

Now, to set up vim on new machine or for another user I can do

{% codeblock lang:bash%}
cd ~
git clone http://github.com/dudarev/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
{% endcodeblock %}

Plugins are included as git submodules with [Pathogen](https://github.com/tpope/vim-pathogen). At the moment I include the following three that I constantly use

* [Fugitive](http://github.com/tpope/vim-fugitive)
* [NERDTree](http://github.com/scrooloose/nerdtree)
* [Pyflakes](http://github.com/mitechie/pyflakes-pathogen)

I am trying new ones regularly, so more submodules will be added. To add a new submodule one should just do

{% codeblock lang:bash%}
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
{% endcodeblock %}

To upgrade all plugins

{% codeblock lang:bash%}
git submodule foreach git pull origin master
{% endcodeblock %}

More vim-related, though less systematic, links may be found in [my wiki](http://dudarev.com/wiki/Vim.html).
