#!/usr/bin/env bash

# ATTENTION changer ici !
NB_EQUIPES=10
NB_PAR_EQUIPE=4
NB_QUESTIONS=25
TOTAL_QUESTIONS=50

# TOTAL_QUESTIONS=$(find ./src/ -iname '*.md' | wc -l)

# 1. update config.tex
echo "Updating 'config.tex'..."
mv -vf config.tex /tmp/

echo -e '\newcommand{\nbequipes}{'${NB_EQUIPES}'}' >> config.tex
echo -e '\newcommand{\nbparequipe}{'${NB_PAR_EQUIPE}'}' >> config.tex
echo -e '\newcommand{\totalnbenigmes}{'${TOTAL_QUESTIONS}'}' >> config.tex
echo -e '\newcommand{\nbenigmes}{'${NB_QUESTIONS}'}' >> config.tex

# 2. update all.tex
