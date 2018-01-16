#!/usr/bin/env bash

# ATTENTION changer ici !
export NB_EQUIPES=6
export NB_PAR_EQUIPE=4
export NB_QUESTIONS=25

TOTAL_QUESTIONS=$(find ./src/ -iname '*.md' | wc -l)
export TOTAL_QUESTIONS=${TOTAL_QUESTIONS:-50}

echo -e "Avec 'config.sh' :"
echo -e "NB_EQUIPES = $NB_EQUIPES ..."
echo -e "NB_PAR_EQUIPE = $NB_PAR_EQUIPE ..."
echo -e "NB_QUESTIONS = $NB_QUESTIONS ..."
echo -e "TOTAL_QUESTIONS = $TOTAL_QUESTIONS ..."
