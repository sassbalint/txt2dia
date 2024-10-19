SHELL:=/bin/bash

all:
	@echo "choose explicit target = type 'make ' and press TAB"

S=scripts
I=txts/*
O=outs/out.dia


# ===== MAIN STUFF 

SCRIPT=$S/txt2dia.py
process:
	@echo 'Converting simple txt input to "Diatar" `.dia` format.'
	@echo " input: $I (set it using I=...)"
	@echo " output: $O (set it using O=...)"
	@cat $I | python3 $(SCRIPT) | sed "s/$$//" > $O

