---
layout: post
title: "Learn Django the Hard Way: 01. Hello, World!"
date: 2013-08-14
comments: true
categories: development django
---


<figure>
<a href="http://www.flickr.com/photos/psg3/6886593040/" title="_DSC0076.jpg by Peter Glenday, on Flickr">
<img src="http://farm8.staticflickr.com/7091/6886593040_b909bb4b3d.jpg" width="500" height="332" alt="_DSC0076.jpg">
</a>
<figcaption>
Olympic Run 2012.
Photo by <a href="http://www.flickr.com/photos/jezkerwin/">Peter Glenday</a>.
</figcaption>
</figure>


In April-June 2013, as part of [learnpython.dn.ua](http://learnpython.dn.ua/) initiative, I gave 10 master classes about web development with Django.
This blog post starts a series of 10 blog posts with lecture notes from that course. 

During the course we have built a photoplanet, 
an aggregator that allows to show most interesting photos from Instagram based on a hashtag. 
The [source code](http://github.com/dudarev/photoplanet) and [instruction for making it run on Heroku](http://dudarev.github.io/photoplanet/) are available on Github.
Follow these blog posts to see how to built such an app from scratch.

<!--more-->


* list element with functor item
{:toc}


## Homework

The title of these blog posts and their format is similar to a book by Zed A. Shaw "[Learn Python the Hard Way](http://learnpythonthehardway.org/)". 
You need to do something practical to learn any technology.

Each post starts with "homework", the description of what should be done after this step.
The code in Github is [tagged](https://github.com/dudarev/photoplanet/releases) (0.0.1, 0.0.2 etc.) so that you may see example code that implements that functionality.

Homeworks for tag 0.0.1:

* Create a simple app with Django that just shows “Hello World!” on main page.
* Deploy it to Heroku.
* Push the code to your Github account.
* Think about theme for your Photo Planet.

See tag [0.0.1](https://github.com/dudarev/photoplanet/commit/05d200def55fdbada0270104b44be973770e899f) in source code that implements all these.

In the beginning of every lecture we discussed some ideas not always directly related to the main practical subject, and then dived into more specific issues.
The very first lecture started with discussion how to learn in general and Django in particular.


## How to learn

I like the observation that I found in "[Version Control with Subversion](http://svnbook.red-bean.com/en/1.7/svn.preface.howread.html)" that 
there are two type of learners: _top-down_ and _bottom-up_. Top-down learners prefer to get general overview of how the system works and only then start using the software.
Bottom-up types prefer to start using the software and extend their knowledge consulting the documentation as required.

As the book by Zed A. Shaw, this set of notes caters to bottom-up type of learner. 
But anybody should try different strategies while learning.

### Read Books

It may be helpful, before diving into this project, read some resources about Python and Django.

#### Python

* "[Think Python](http://www.greenteapress.com/thinkpython/)" -- a good academic introduction to the language.
* "[Learn Python the Hard Way](http://learnpythonthehardway.org/)" -- more practical book with specific exercises.

#### Django

* "[Official Django 1.5 Documentation](https://docs.djangoproject.com/en/1.5/)" -- a good starting point for learning.
* "[Two Scoops of Django](https://django.2scoops.org/)" -- an excellent recent overview of Django.

### Ask questions

If you are stuck -- ask questions. There are multiple Python/Django communities online. 
We have a [Google group](https://groups.google.com/forum/?fromgroups=#!forum/learnpythondnua) created specifically for the course.
You may find many similar mailing lists and groups on Google+, Facebook in your area.
[Stackoverflow](http://stackoverflow.com/) may also be a good place to ask specific questions.

Google your errors and find relevant discussions.
I have a habit of keeping some notes I find in my wiki. Here are the pages for
[Python](http://dudarev.com/wiki/Python.html) and [Django](http://dudarev.com/wiki/Django.html).
They are very helpful to refresh some question in the future (I just remember that I noted some question, browse to the page, and search it quickly).


## What Django is good for

To choose technology is the best after you have an idea what you (and client) are building.  Do not stick with one technology. Choose technology based on a goal not other way around.

Django was originally developed for a newspaper website. It is extremely good for content websites (Instagram, Pinterest etc.)
If you are building real time web app where users see state of others (chat, for example) [Tornado](http://www.tornadoweb.org/en/stable/) is more suitable. 
If you build a small website that requires little of "batteries" included in Django, check out [Flask](http://flask.pocoo.org/) or [Bottle](http://bottlepy.org/docs/dev/).


## Planning

[Plan-Do-Check-Act](http://www.tornadoweb.org/en/stable/) is an iterative four-step management method used in business for the control and continuous improvement of processes and products. 

As and illustration, I used [progressio](https://pypi.python.org/pypi/progressio/), my command line tool to track progress and things that needs to be done. 
It creates `progress.db`, SQLite file where information about steps is stored.
The file was kept in the repository so you may observe what was changed.
The script is very raw and you should not use it yet.

There are multiple bug tracking tools: Trac, Redmine, Asana. They are all good. Experiment with them.

From personal experience, as a master application it is the best to use the tool that a client is the most comfortable with, and then copy the tasks to the app that team uses.

### Description

It is important to have a clear understanding of what one works on. It is polite to have a clear `README` file that briefly describes the project.

In addition to `README.md`, we also had `STORIES.md` file from the very start. In the spirit of [behavior-driven development](http://en.wikipedia.org/wiki/Behavior-driven_development) (BDD),
it described user stories for the planned initial implementation. We have not followed the BDD methodology, but I find it helpful to describe how a user may interact with application.


## Deployment

In most of the books about some web framework deployment is discussed closer to the end of the book. I find it very useful to have something that one may see and play with in the shortest time and then work on its improvements. There are two approaches to deployment: you may deploy everything yourself or use one of the modern Platforms as a Service (PaaS).

### Deploying yourself

You should deploy with [WSGI](http://en.wikipedia.org/wiki/Web_Server_Gateway_Interface). 
"WSGI was created as a low-level interface between web servers and web applications or frameworks to promote common ground for portable web application development."
Two common approaches: Gunicorn behind a Nginx proxy, Apache with mod_wsgi. My personal feeling is that the first one is becoming more popular. 
I forked and use [gist](https://gist.github.com/dudarev/4348689) on Github to keep notes about deploying with Nginx.

### Using PaaS

There are multiple PaaSes: [Heroku](http://heroku.com/), [Gondor](https://gondor.io/), [dotCloud](https://www.dotcloud.com/). We will focus on Heroku.

Good overview of various PaaSes ([PDF slides](http://igordavydenko.com/static/talks/kyivpy-6.pdf)) was made by [Igor Davydenko](http://igordavydenko.com) during one of Kyiv.py meetings.


## Django environment setup

This is very good idea to have the same database as in development and deployment environments. 
I had a few simple projects where having different databases did not hurt, but in larger projects it was clear that the errors will arise.
In this project we will mix SQLite and Postgre databases. This does not hurt on these initial stages.

You should use version control. We will use git.

This is de facto a standard in Python world to use [virtualenv](https://pypi.python.org/pypi/virtualenv). 
It isolates modules used by a specific projects. 
First, it seems as a waste of space, but do not worry about it. 
It really helps with using different versions of libraries in different projects.
I strongly recommend to use it together with [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/).

### Project layout

Preferred layout:

```
<repository_root>/
    <django_project_root>/
        <configuration_root>/
```

We will talk more about what goes into repository root later. For now, we have there the project itself, also `Makefile`, `README`, `STORIES`, `Procfile`, `requirements.txt`.


## Steps to do the homework

Run on localhost

```bash
django-admin.py help
django-admin.py startproject photoplanet
```

also try

```bash
startproject \
    --template=https://github.com/twoscoops/django-twoscoops-project/zipball/master \
    --extension=py,rst,html \
    photoplanet
django-admin.py 
```

To run the project

```bash
python manage.py runserver
```

or 

```bash
chmod +x manage.py
./manage.py runserver
```

You may create a simple `Makefile` (see project repo).

```bash
make runserver
```

### Push to Github

Create new repo on Github. Add remote to local git repo (change to your URI):

```bash
git remote add origin git@github.com:username/photoplanet.git
git push -u origin master
```

### Make it run on Heroku

Heroku has excellent documentation for using the platform with various technologies.
Follow the notes for [quickstart](https://devcenter.heroku.com/articles/quickstart) and [Django](https://devcenter.heroku.com/articles/django).

Set up another remote:

```bash
git remote add heroku git@heroku.com:photoplanet.git
git push origin heroku
```

There is a difference in Procfile from what mentioned in the notes above:

```
        web: gunicorn --pythonpath=photoplanet photoplanet.wsgi
```
