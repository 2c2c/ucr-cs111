MAKE=cd ./$(TARGET)/;\
cat ./part*.tex > ./$(TARGET).tex;\
latexmk -pdf -jobname=pdf/$(TARGET) $(TARGET).tex;\
cd ..


all: hw1 hw2 hw3 hw4

pdf: 
	[ -e ./$(TARGET)/pdf ] || mkdir ./$(TARGET)/pdf

hw1: TARGET = hw1
hw1: pdf 
	$(MAKE)

hw2: TARGET = hw2
hw2: pdf
	$(MAKE)

hw3: TARGET = hw3
hw3: pdf
	$(MAKE)

hw4: TARGET = hw4
hw4: pdf
	$(MAKE)

clean:
	[ -e ./hw1/hw1.tex ] && rm ./hw1/hw1.tex
	[ -e ./hw1/pdf ] && rm -rf ./hw1/pdf
	[ -e ./hw2/hw2.tex ] && rm ./hw2/hw2.tex
	[ -e ./hw2/pdf ] && rm -rf ./hw2/pdf
	[ -e ./hw3/hw3.tex ] && rm ./hw3/hw3.tex
	[ -e ./hw3/pdf ] && rm -rf ./hw3/pdf
	[ -e ./hw4/hw4.tex ] && rm ./hw4/hw4.tex
	[ -e ./hw4/pdf ] && rm -rf ./hw4/pdf
