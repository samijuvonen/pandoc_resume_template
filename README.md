Oh No, Another Resume Generator
============================

So, the cool geek thing is to keep your resume in a plain text file, right? Plain text is just 
the best way to keep personal documents away from closed formats. And of course, with the
right setup, you can generate multiple output formats by typing `make`.

I have previously hacked at my resume in RestructuredText, Markdown, groff man, HTML, and 
even Microsoft Word, OpenOffice and Google Docs. I hope this is the last iteration!

Pandoc and YAML sitting in a tree
--------------------

This is a [pandoc](http://pandoc.org) template for generating a pretty resume in
multiple formats. Formats supported are PDF, HTML/CSS, Markdown and plain text.

The resume itself is a [YAML](http://www.yaml.org/about.html) file. The
semi-structured format of a resume and YAML are a great match. Using YAML with
Pandoc allows us to use Pandoc's templating language to get a good consistent
result.

Editing YAML is easy, especially with a decent editor, like Emacs yaml-mode.

PDF
---------

PDF is generated with XeLateX and the
[moderncv](https://www.ctan.org/pkg/moderncv?lang=en) latex class. I'm using
pandoc version 1.16 and TeXLive 2015 straigth from
[Fedora 24](http://fedoraproject.org) as I write this. Experiment with changing
the font and moderncv style and color options in the template. The example in
this repo is not the best ;-). You should be able to change the font by adding
"mainfont: My Awesome Font" in the YAML file.

HTML
----------

I cribbed the HTML and CSS from Thomas Hardy in the UK (link below) and adapted
it to pandoc templating. The Makefile HTML target generates a single document
including the style sheet (`pandoc --self-contained`).

Plain text
------------

The plain text and Markdown templates can be used to generate something to paste into
email and web forms.

Usage
-----
    git clone https://github.com/samjuvonen/pandoc_resume_template.git
    cp example.yml resume.yml
    $EDITOR resume.yml
    make



Credits
-------

I'm glad I stumbled on Mattia Tezzele's (@mrzool) [Typesetting automation](http://mrzool.cc/writing/typesetting-automation/) post. His use of YAML was what got me going. I just decided to
use moderncv instead of straight LaTeX.

Andrew Swann's answer to [this StackExchange question](http://tex.stackexchange.com/questions/168537/how-to-insert-multiple-paragraphs-in-a-cventry) solved how to put multiple paragraphs into a moderncv cventry description.

HTML and CSS are adapted from Thomas Hardy's [Free Responsive HTML/CSS3 CV Template](http://www.thomashardy.me.uk/free-responsive-html-css3-cv-template).









