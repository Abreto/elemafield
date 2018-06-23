JOB=verify
SRC=$(JOB).tex
RES=wave.png verify.bib
verify.pdf: $(SRC) $(RES)
	xelatex $(SRC)
	bibtex $(JOB)
	xelatex $(SRC)
	xelatex $(SRC)

install:
	git commit -am "updated at `date`"
	git push origin master

clean:
	rm verify.aux verify.log
	rm verify.bbl verify.blg
