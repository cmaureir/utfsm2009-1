TEX=lab1

DEPENDENCIES=$(TEX).tex

all:
	@pdflatex $(TEX).tex

clean:
	@rm -f $(TEX).{aux,toc,log,tmp,dvi,idx,ilg,ind,bbl,blg,out,nav,snm} .my_log

x:
	xpdf $(TEX).pdf 2> /dev/null &
tar: all
	tar -cvf 
