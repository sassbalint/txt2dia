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

20241020:
	make process I="txts/_evk29.txt txts/osanna.txt txts/02_uram_irgalmazz.txt txts/03_dicsoseg.txt txts/erot_adsz.txt txts/gyonyoru_vagy.txt txts/nezz_testver_fel.txt txts/07_szent_vagy.txt txts/08_isten_baranya.txt txts/jezus_aldott_legyel.txt txts/beke_istene.txt txts/maria_hozzad_szall.txt txts/osanna.txt txts/_evk29.txt" O=outs/20241020.dia
