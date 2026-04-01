TECTONIC = tectonic
SECTIONS = $(wildcard sections/*.tex)

.PHONY: pdf clean

pdf: CLS_LATEX_PRESENTATION_TEMPLATE_2026.pdf

CLS_LATEX_PRESENTATION_TEMPLATE_2026.pdf: CLS_LATEX_PRESENTATION_TEMPLATE_2026.tex beamerthemeCLS.sty $(SECTIONS) images/cls_logo.png
	$(TECTONIC) CLS_LATEX_PRESENTATION_TEMPLATE_2026.tex

clean:
	rm -f *.pdf *.aux *.log *.nav *.out *.snm *.toc *.vrb
