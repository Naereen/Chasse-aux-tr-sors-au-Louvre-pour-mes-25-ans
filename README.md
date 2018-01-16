# Chasse aux trésors au Louvre pour mes 25 ans

FIXME inclure une jolie capture d'écran d'un des livrets d'énigmes qui donne un lien vers le PDF

## À propos

Pour fêter nos 25 ans, j'ai organisé avec une amie une "chasse aux trésors", au musée du Louvre, en février 2018.

Nous avions rassemblé environ

Ce dépôt Git contient les sources (LaTeX et Markdown), des modèles et des scripts pour créer des livres d'énigmes.

## Construire les livrets d'énigmes
- Dépendances : git, make, pdflatex, pandoc, python et bash. Testé seulement sous [XUbuntu 17.10](https://xubuntu.org/getxubuntu/)
- Clonez ce dépôt,
```bash
cd /tmp/  # ou n'importe où
git clone https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git
cd Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git
```
- **ATTENTION** : renseignez le nombre d'équipes `NB_EQUIPES`, le nombre de joueurs par équipes `NB_PAR_EQUIPES` et le nombre de questions par fiche d'énigmes `NB_QUESTIONS`, dans le fichier [`config.sh`](config.sh),
- Si besoin, rajoutez des énigmes (en rédigeant des petits fichiers Markdown, suivant [ce modèle](template.md)), comme ceux dans ce dossier [`src`](src/),
- Enfin, construisez tous les livrets en appelant `make all_pdf`. Ça peut prendre quelques minutes !
```bash
make all_pdf
```
- Cela va constituer dans le dossier [`output`](output/) `NB_TEAM` livrets, avec leur source LaTeX et un document PDF compilé, chacun contenant `NB_QUESTIONS` questions.

----

## Sources et idées
- La page [sélections du site web du Louvre](http://www.louvre.fr/selections)
- Une visite au Louvre !
- De l'aide de nos amis, merci notamment à [Ludovic Sacchelli](http://www.cmap.polytechnique.fr/~sacchelli/).
- De l'inspiration, de nombreuses sources...

----

## Aspect technique

----

## :scroll: Licence ? [![CC BY-NC-ND 4.0 licence](https://img.shields.io/github/license/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.svg)](https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/blob/master/LICENSE)
Ce dépôt git et tous les fichiers contenus sont publiés librement sous les termes de la [Licence CC BY-NC-ND 4.0](http://creativecommons.org/licenses/by-nc-nd/4.0/) (voir le fichier [LICENSE](LICENSE)).
© Hélène Javelaud et [Lilian Besson](https://GitHub.com/Naereen), 2018.

[![Built with Markdown](https://img.shields.io/badge/Construit%20avec-Markdown-1abc9c.svg)](http://commonmark.org)
[![Built with Pandoc](https://img.shields.io/badge/Construit%20avec-Pandoc-1abc9c.svg)](https://pandoc.org)
[![Built with LaTeX](https://img.shields.io/badge/Construit%20avec-LaTeX-1abc9c.svg)](https://www.latex-project.org/)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/graphs/commit-activity)
[![Demandez moi n'importe quoi !](https://img.shields.io/badge/Demandez%20moi-n'%20importe%20quoi-1abc9c.svg)](https://GitHub.com/Naereen/ama.fr)
[![GitHub licence](https://img.shields.io/github/license/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.svg)](https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/blob/master/LICENSE)
[![Analytics](https://ga-beacon.appspot.com/UA-38514290-17/github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/README.md?pixel)](https://GitHub.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans/)

[![ForTheBadge built-with-love](http://ForTheBadge.com/images/badges/built-with-love.svg)](https://GitHub.com/Naereen/)
[![ForTheBadge uses-badges](http://ForTheBadge.com/images/badges/uses-badges.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)

