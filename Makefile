SRC=verify.tex
RES=
verify.pdf: $(SRC) $(RES)
	xelatex $(SRC)
	xelatex $(SRC)

install:
	git commit -am "updated at `date`"
	git push origin master

clear:
	rm verify.aux verify.fdb_latexmk verify.fls verify.log
