SRC=presentacion

all: 
	pdflatex $(SRC).tex
	pdflatex $(SRC).tex
clean:
	@echo "limpiando!"
	@rm -rf *.{aux,log,out,toc,bbl,blg,nav,snm}
	@rm -rf *~ src/*~


distclean: clean
	@echo "eliminando pdf..."
	@rm -rf $(SRC).pdf

x: $(SRC).pdf
	xpdf $(SRC).pdf &> /dev/null
k:: $(SRC).pdf
	okular $(SRC).pdf &> /dev/null
e:: $(SRC).pdf
	evince $(SRC).pdf &> /dev/null
