#!/bin/bash


cd ./CV

pdflatex -interaction=nonstopmode main.tex

if [ -f main.pdf ]; then 
	
else
	exit 1
fi