all: pdf html txt md

pdf: resume.pdf
resume.pdf: resume.yml resume.pandoc.tex ; pandoc --template resume.pandoc.tex --latex-engine=xelatex -o resume.pdf resume.yml

html: resume.html
resume.html: resume.yml resume.pandoc.html ; pandoc --template resume.pandoc.html --self-contained --css resume.css -o resume.html resume.yml

txt: resume.txt
resume.txt: resume.yml resume.pandoc.plain ; pandoc -t plain --template resume.pandoc.plain -o resume.txt resume.yml

md: resume.md
resume.md: resume.yml resume.pandoc.markdown ; pandoc -t markdown  --template resume.pandoc.markdown -o resume.md resume.yml

clean: ; rm -f resume.pdf resume.html resume.txt resume.md