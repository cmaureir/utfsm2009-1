all:
	@echo "Generando pdf por primera vez..."
	@pdflatex main.tex > .my_log || (cat .my_log && rm -rf .my_log && exit 1)
	@echo "Generando pdf por segunda vez..."
	@pdflatex main.tex > .my_log || (cat .my_log && rm -rf .my_log && exit 1)
	
clean:
	@echo "Limpiando..."
	@rm -rf *.out *.log *.aux *.toc
	@rm -rf src/*.aux
	@rm -rf .my_log
	
distclean: clean
	@echo "Eliminando pdf..."
	@rm -rf *.pdf

x:
	xpdf main.pdf &> /dev/null &
e:
	evince main.pdf &> /dev/null &
