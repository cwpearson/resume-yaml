
all: cv_pearson.pdf

cv_pearson.pdf: cv.yaml cv_template.tex
	rm cv.tex
	./build.py
	# pdflatex cv.tex

.PHONY: clean
clean:
	rm -f *.out *.pdf *.fls *.aux *.log *.gz *latexmk cv.tex
