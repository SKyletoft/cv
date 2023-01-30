both: sv.pdf en.pdf

sv.pdf: sv.tex
	tectonic sv.tex

en.pdf: en.tex
	tectonic en.tex

install: both ../samuel.kyletoft.se
	cp sv.pdf ../samuel.kyletoft.se/cv/sv/CV.pdf
	cp en.pdf ../samuel.kyletoft.se/cv/en/CV.pdf

clean:
	-rm sv.pdf
	-rm en.pdf

.PHONY: clean install
