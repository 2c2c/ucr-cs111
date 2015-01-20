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
	rm ./hw1/hw1.tex
	rm -rf ./hw1/pdf
	rm ./hw2/hw2.tex
	rm -rf ./hw2/pdf
