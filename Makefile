LATEX = which latex
PDFLATEX = which pdflatex
BIBTEX = which bibtex


TARGET = main
TRASH = *.aux *.log *.toc *~ *.blg *.bbl *.lof *.lot
RM = /usr/bin/rm


pdf:
	$(PDFLATEX) $(TARGET)
	$(BIBTEX) $(TARGET)
	$(PDFLATEX) $(TARGET)
	$(PDFLATEX) $(TARGET)
	$(PDFLATEX) $(TARGET)

clean:
	$(RM) $(TRASH)

clean-all: clean
	$(RM) *.pdf

