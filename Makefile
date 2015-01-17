MAKE=cd ./$(TARGET)/;\
cat ./part*.tex > ./$(TARGET).tex;\
latexmk -pdf -jobname=pdf/$(TARGET) $(TARGET).tex;\
cd ..


all: hw1

pdf: 
	[ -e ./$(TARGET)/pdf ] || mkdir ./$(TARGET)/pdf

hw1: TARGET = hw1
hw1: pdf 
	$(MAKE)

clean:
	rm ./hw1/hw1.tex
	rm -rf ./hw1/pdf
