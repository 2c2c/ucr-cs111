MAKE=cd ./$(TARGET)/;\
cat ./part*.tex > ./$(TARGET).tex;\
latexmk -pdf -jobname=pdf/$(TARGET) $(TARGET).tex;\
cd ..


all: hw1 hw2

pdf: 
	[ -e ./$(TARGET)/pdf ] || mkdir ./$(TARGET)/pdf

hw1: TARGET = hw1
hw1: pdf 
	$(MAKE)

hw2: TARGET = hw2
hw2: pdf
	$(MAKE)

clean:
	[ -e ./hw1/hw1.tex ] && rm ./hw1/hw1.tex
	[ -e ./hw1/pdf ] && rm -rf ./hw1/pdf
	[ -e ./hw2/hw2.tex ] && rm ./hw2/hw2.tex
	[ -e ./hw2/pdf ] && rm -rf ./hw2/pdf
