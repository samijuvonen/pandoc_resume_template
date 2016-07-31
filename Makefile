all: pdf

pdf: yourname.pdf
yourname.pdf: resume.yml resume.pandoc.tex ; pandoc --template resume.pandoc.tex --latex-engine=xelatex -o yourname.pdf resume.yml
