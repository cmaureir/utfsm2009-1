SHELL=/bin/bash
TEX=cc1-lab1

DEPENDENCIES=$(TEX).tex

all:
	        @echo "Generando pdf ..."
		        @pdflatex $(TEX).tex > .my_log || (cat .my_log && rm -rf .my_log && exit 1)

clean:
	@rm -f *.{aux,toc,log,tmp,dvi,idx,ilg,ind,bbl,blg,out,nav,snm} .my_log

x:
	xpdf $(TEX).pdf &> /dev/null
