MAKE=cd ./$(TARGET)/;\
cat ./part*.tex > ./$(TARGET).tex;\
latexmk -pdf -jobname=pdf/$(TARGET) $(TARGET).tex;\
cd ..


all: pdf hw1

pdf: 
	[ -e ./hw1/pdf ] || mkdir ./hw1/pdf

hw1: TARGET = hw1
hw1: pdf 
	$(MAKE)

clean:
	rm -rf ./hw1/pdf
