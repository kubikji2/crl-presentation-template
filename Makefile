TARGET = main
LUALATEXFLAGS = --halt-on-error -synctex=1

all:
	lualatex $(LUALATEXFLAGS) $(TARGET)

clean:
	-rm *.aux *.log *.nav *.out *.snm *.toc

cleanall: clean
	-rm $(TARGET).pdf
