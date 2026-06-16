#!/bin/bash


cd ./CV

pdflatex -interaction=nonstopmode main.tex

if [ -f main.pdf ]; then 
	cp main.pdf /CV/CV/main.pdf
else
	exit 1
fi