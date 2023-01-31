both: sv.pdf en.pdf

sv.pdf: sv.tex
	tectonic sv.tex

en.pdf: en.tex
	tectonic en.tex

../samuel.kyletoft.se/cv/sv/CV.pdf: sv.pdf ../samuel.kyletoft.se
	cp sv.pdf ../samuel.kyletoft.se/cv/sv/CV.pdf

../samuel.kyletoft.se/cv/en/CV.pdf: en.pdf ../samuel.kyletoft.se
	cp en.pdf ../samuel.kyletoft.se/cv/en/CV.pdf

install: ../samuel.kyletoft.se/cv/sv/CV.pdf ../samuel.kyletoft.se/cv/en/CV.pdf

clean:
	-rm sv.pdf
	-rm en.pdf

.PHONY: clean install
