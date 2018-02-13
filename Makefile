
all: cv_pearson.tex

cv_pearson.tex: cv.yaml cv_template.tex
	rm -f cv_pearson.tex
	./build.py

cv_pearson.pdf: cv_pearson.tex
	pdflatex cv_pearson.tex

.PHONY: clean
clean:
	rm -f *.out *.pdf *.fls *.aux *.log *.gz *latexmk cv.tex
