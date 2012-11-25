SRCS=texto1

all:
	pdflatex $(SRCS).tex
	xpdf $(SRCS).pdf
	rm -rf *.aux *.log *.dvi
clean:
	rm -rf *.pdf
