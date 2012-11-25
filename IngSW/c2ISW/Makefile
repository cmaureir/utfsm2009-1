src=ingsw

all:
	@echo "Generando pdf por primera vez..."
	@pdflatex $(src).tex > .my_log || (cat .my_log && rm -rf .my_log && exit 1)
	@rm -rf .my_log
	@echo "Generando pdf por segunda vez..."
	@pdflatex $(src).tex > .my_log || (cat .my_log && rm -rf .my_log && exit 1)
	@rm -rf .my_log
	
clean:
	@echo "Limpiando..."
	@rm -rf *.out *.log *.aux *.toc
	
distclean: clean
	@echo "Eliminando pdf..."
	@rm -rf *.pdf

x:
	xpdf $(src).pdf &> /dev/null &
