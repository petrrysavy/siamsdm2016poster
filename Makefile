%.pdf: %.tex
	pdflatex $<
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<

all: poster.pdf

clean:
	rm -f poster.out poster.aux poster.bbl poster.log poster.pdf poster.blg
