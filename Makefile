TARGET = main

all:
	lualatex $(TARGET)

clean:
	-rm *.aux *.log *.nav *.out *.snm *.toc

cleanall: clean
	-rm $(TARGET).pdf
