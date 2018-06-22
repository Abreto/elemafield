SRC=verify.tex
RES=
verify.pdf: $(SRC) $(RES)
	xelatex $(SRC)
	xelatex $(SRC)

clear:
	rm verify.aux verify.fdb_latexmk verify.fls verify.log
