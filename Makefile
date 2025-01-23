
FILE=

all: nn p

nn:
	make one FILE=noise

p:
	make one FILE=on.psd

one:
	pdflatex ${FILE}.tex
	bibtex ${FILE}
	pdflatex ${FILE}.tex

clean:
	-rm *.aux
	-rm *.bbl
	-rm *.blg
	-rm *.log
