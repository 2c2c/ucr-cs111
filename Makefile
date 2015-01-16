MAKE=cd ./hw1/;\
cat ./part*.tex > ./merged.tex;\
pdflatex ./merged.tex -output-directory=../pdf/;\
cd ..


all: pdf hw1

pdf: 
	[ -e pdf ] || mkdir pdf

hw1: pdf
	$(MAKE)
