SRC=verify.tex
RES=keyboard-croped.pdf mod_counter_croped.pdf mod_ip_croped.pdf mod_lock_croped.pdf mod_op_croped.pdf mod_pwdm_croped.pdf mod_sm_croped.pdf
verify.pdf: $(SRC) $(RES)
	xelatex $(SRC)
	xelatex $(SRC)

clear:
	rm verify.aux verify.fdb_latexmk verify.fls verify.log
