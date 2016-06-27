#!/bin/bash
# use this script by calling `source get_upd_ltxresources.sh` in the console

rm mathComAbb.tex
wget https://raw.githubusercontent.com/highlando/latex-miscs/master/mathComAbb.tex

rm mathEnv.tex
wget https://raw.githubusercontent.com/highlando/latex-miscs/master/mathEnv.tex

rm bib_jh.bib
wget https://raw.githubusercontent.com/highlando/bibfiles/master/bib_jh.bib

rm swbib_jh.bib
wget https://raw.githubusercontent.com/highlando/bibfiles/master/swbib_jh.bib
