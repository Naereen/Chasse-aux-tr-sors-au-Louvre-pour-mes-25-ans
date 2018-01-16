# Makefile to convert markdown poems to PDF
SHELL=/usr/bin/env /bin/bash

all:	compile_one send

send:	send_zamok
send_zamok:
	CP --exclude=.git ./ ${Szam}publis/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git/

compile_all:	clean alltex all_pdf
compile_one:	clean alltex main.pdf
main.pdf:
	./prebuild.sh
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex

all_pdf:
	./prebuild.sh
	./build.sh

clean:
	rm -vf main.aux main.bbl main.blg main.brf main.dvi main.fdb_latexmk main.fls main.synctex.gz main.haux main.hidx main.htmp main.htoc main.id[vx] main.ilg main.ind main.lg main.lof main.log main.lot main.meta main.nav main.out main.ps main.snm main.tid main.tmp main.tms main.toc main.vrb
	rm -vf all.aux src/*.aux

.SUFFIXES:
.SUFFIXES: .md .tex

CONTENT_MARKDOWN=$(wildcard src/*.md)
CONTENT_TEX=$(CONTENT_MARKDOWN:.md=.tex)

list_md:
	echo $(CONTENT_MARKDOWN)
list_tex:
	echo $(CONTENT_TEX)

alltex:	$(CONTENT_TEX)

%.tex:	%.md
	pandoc --from=markdown+escaped_line_breaks+yaml_metadata_block -N --to=latex --template=my.latex -o "$@" "$<"
# .md.tex:
# 	pandoc -t latex -o "$@" "$<"
