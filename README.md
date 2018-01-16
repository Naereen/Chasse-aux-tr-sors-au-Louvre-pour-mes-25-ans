# Chasse aux trésors au Louvre pour mes 25 ans

## Aperçu du document
- Première page :

![https://perso.crans.org/besson/publis/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git/main.pdf](screenshots/demo1.png)

- Introduction avec les règles du jeu et conclusion :

<a href="https://perso.crans.org/besson/publis/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git/main.pdf"><img width="50%" src="screenshots/demo2.png"></a><a href="https://perso.crans.org/besson/publis/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git/main.pdf"><img width="50%" src="screenshots/demo3.png"></a>

- Liste d'énigmes : pas encore ! :boom: seulement après le jour J :smiley: !

## À propos

Pour fêter nos 25 ans avec une amie, nous avons organisé  une "chasse aux trésors", au musée du Louvre, en février 2018.

Nous avons écrit 50 énigmes, consistant pour la plupart en une tâche simple du genre ["prendre en photo 5 extraits écrits en langue ancienne"](src/1.md), ["prendre en photo une statue de Voltaire"](src/2.md), etc.
Certaines étaient plus difficiles, et moins objectives, comme ["trouver un sosie de Lilian"](src/4.md)...

Nous avions réunis 24 amis, regroupés en équipe de 4 personnes.

Ce dépôt Git contient les sources (LaTeX et Markdown), des modèles et des scripts pour créer des livres d'énigmes.

---

## Construire les livrets d'énigmes

- Dépendances : git, make, pdflatex, pandoc, python, [PDFCompress](https://bitbucket.org/lbesson/bin/src/master/PDFCompress) et bash. Testé seulement sous [XUbuntu 17.10](https://xubuntu.org/getxubuntu/),
- Clonez ce dépôt,
```bash
$ cd /tmp/  # ou n'importe où
$ git clone https://github.com/Naereen/Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git
$ cd Chasse-aux-tr-sors-au-Louvre-pour-mes-25-ans.git
```
- **ATTENTION** : renseignez le nombre d'équipes `NB_EQUIPES`, le nombre de joueurs par équipes `NB_PAR_EQUIPES` et le nombre de questions par fiche d'énigmes `NB_QUESTIONS`, dans le fichier [`config.sh`](config.sh),
- Si besoin, rajoutez des énigmes (en rédigeant des petits fichiers Markdown, suivant [ce modèle](template.md)), comme ceux dans ce dossier [`src`](src/),
- Enfin, construisez tous les livrets en appelant `make all_pdf`. Ça peut prendre quelques minutes !
```bash
$ make all_pdf
```
- Cela va constituer, dans le dossier [`output/`](output/), `NB_TEAM` différents livrets, avec simplement un document PDF compilé, chacun contenant `NB_QUESTIONS` questions. La source LaTeX n'est pas sauvegardée, pour assurer une non-reproductibilité de l'échantillon aléatoire ! (inutile, mais drôle !)

----

## Sources et idées
- La page [sélections du site web du Louvre](http://www.louvre.fr/selections)
- Une visite au Louvre !
- De l'aide de nos amis, merci notamment à [Ludovic Sacchelli](http://www.cmap.polytechnique.fr/~sacchelli/).
- De l'inspiration et de nombreuses sources...

----

## Aspect technique
- Ce document a été rédigé et compilé par mes soins, en sélectionnant *aléatoirement* des énigmes parmi une liste [plus grande](src/). Chaque livret contient **25** énigmes, tirées aléatoirement parmi **50** (et ces nombres sont configurables).
- Chaque énigme a été rédigée comme un document [Markdown](https://daringfireball.net/projects/markdown/), qui est ensuite compilé en LaTeX par [`pandoc`](http://pandoc.org/).
- Le document principal est un simple document LaTeX, utilisant le style très épuré de [Tufte-LaTeX](https://github.com/Tufte-LaTeX/tufte-latex).
- Ce recueil à été rédigé et imprimé en février 2018.

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

