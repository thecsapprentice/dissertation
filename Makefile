all:
	pdflatex document
	pdflatex document
	bibtex document.aux
	xindy -L english -C utf8 -I xindy -M document -t document.glg -o document.gls document.glo
	pdflatex document
	pdflatex document
