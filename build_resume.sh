#!/bin/bash


cd ./CV

pdflatex -interaction=nonstopmode main.tex

if [ -f main.pdf ]; then 
	echo "-f main.pdf"
else
	exit 1
fi