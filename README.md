Yet Another Resume Generator
============================

So, the cool geek thing is to keep your resume in a plain text file, right? Plain text is just 
the best way to keep personal documents away from closed formats. And of course, with the
right processing, you can generate multiple output formats by typing make.

I have previously kept my resume in RestructuredText, Markdown, groff man, HTML, and 
even Microsoft Word, OpenOffice and Google Docs. I hope this is the last iteration!

Pandoc and YAML to the rescue
--------------------

This is a [pandoc](http://pandoc.org)  template for generating a pretty PDF resume with xelatex and the [moderncv](https://www.ctan.org/pkg/moderncv?lang=en) 
latex class. I'm using pandoc version 1.16 and TeXLive 2015 straigth from [Fedora 24](http://fedoraproject.org)  as I write this.

The resume itself is a [YAML](http://www.yaml.org/about.html)  file. The semi-structured format of a resume and YAML are a great
match. Editing YAML is easy, especially with Emacs yaml-mode.

Using YAML with Pandoc allows us to use Pandoc's templating language to get a good consistent
result.

Usage
-----
    git clone https://github.com/samjuvonen/pandoc_resume_template.git
    cp example.yml resume.yml
    $EDITOR resume.yml
    make

Experiment with changing the font and moderncv style and color options in the template. The example in this repo is not the best ;-).

Credits
-------

I'm glad I stumbled on Mattia Tezzele's (@mrzool) [Typesetting automation](http://mrzool.cc/writing/typesetting-automation/) post. His use of YAML was what got me going. I just decided to
use moderncv instead of straight LaTeX.

Andrew Swann's answer to this StackExchange [question](http://tex.stackexchange.com/questions/168537/how-to-insert-multiple-paragraphs-in-a-cventry) solved how to put multiple paragraphs into a moderncv cventry description.


TODO
----
- HTML template
- plain text or Markdown template








