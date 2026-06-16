#!/bin/bash


cd ./CV

pdflatex -interaction=nonstopmode main.tex

find / -name main.pdf 2>/dev/null

if [ -f main.pdf ]; then 
	echo "-f main.pdf"
else
	exit 1
fi