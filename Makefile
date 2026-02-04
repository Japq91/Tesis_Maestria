# Makefile para Tesis Bilingüe

# Por defecto, si escribes solo 'make', compila la de español

all: es

es:
	pdflatex main_es.tex
	bibtex main_es
	pdflatex main_es.tex
	pdflatex main_es.tex

pt:
	pdflatex main_pt.tex
	bibtex main_pt
	pdflatex main_pt.tex
	pdflatex main_pt.tex

clean:
	rm -f *.aux *.log *.toc *.out *.pdf *.bbl *.blg *.lof *.lot *.run.xml *.synctex.gz *.fdb_latexmk *.fls *.bcf
	rm -f capitulos_es/*.aux capitulos_es/*.run.xml
	rm -f capitulos_pt/*.aux capitulos_pt/*.run.xml
