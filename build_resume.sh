#!/bin/bash


cd ./resume

pdflatex -interaction=nonstopmode main.tex

if [ -f main.pdf ]; then 
	cp main.pdf /resume/CV/main.pdf
else
	exit 1
fi