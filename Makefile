all: chapter

clean:
	-rm -f *.aux *.log *.dvi *.bbl *.blg *.out *.pdf

paper: maximizing_science_dark_energy.pdf

chapter: short_version.pdf

maximizing_science_dark_energy.pdf: maximizing_science_dark_energy.tex
	pdflatex maximizing_science_dark_energy.tex
	pdflatex maximizing_science_dark_energy.tex
	bibtex maximizing_science_dark_energy
	pdflatex maximizing_science_dark_energy.tex
	pdflatex maximizing_science_dark_energy.tex

short_version.pdf: short_version.tex sl_short.tex photoz_short.tex dm_short.tex dark_energy.bib
	pdflatex short_version.tex
	pdflatex short_version.tex
	bibtex short_version
	pdflatex short_version.tex
	pdflatex short_version.tex
