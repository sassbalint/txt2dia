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

20250119:
	make process I="txts/ebredj_fel_te_ki.txt txts/uram_irgalmazz_bonifac.txt txts/tied_a_dicsoseg.txt txts/enekelj_az_urnak.txt txts/zengd_velunk.txt txts/kenyeret_es_bort_hozunk.txt txts/szent_vagy_bonifac.txt txts/isten_baranya_bonifac.txt txts/bewahre_uns_gott.txt txts/mert_te_uram.txt txts/csak_jezusnak.txt txts/bewahre_uns_gott.txt" O=outs/20250119.dia

20241215:
	make process I="txts/_adv3.txt txts/advent_sotet_fenn.txt txts/02_uram_irgalmazz.txt txts/a_szeleknek.txt txts/ebredj_ember.txt txts/gabriels_message.txt txts/07_szent_vagy.txt txts/08_isten_baranya.txt txts/hivlak_jezus.txt txts/izleld_es_lasd.txt txts/indulj_es_menj.txt txts/gabriels_message.txt txts/_adv3.txt" O=outs/20241215.dia

20241117:
	make process I="txts/_evk33.txt txts/jojj_itt_az_ido.txt txts/02_uram_irgalmazz.txt txts/tied_a_dicsoseg.txt txts/teremts_bennem.txt txts/gyonyoru_vagy.txt txts/izleld_es_lasd.txt txts/07_szent_vagy.txt txts/08_isten_baranya.txt txts/nan_nega_csota.txt txts/meghivtal.txt txts/szent_marton.txt txts/nan_nega_csota.txt txts/_evk33.txt" O=outs/20241117.dia

20241020:
	make process I="txts/_evk29.txt txts/osanna.txt txts/02_uram_irgalmazz.txt txts/03_dicsoseg.txt txts/erot_adsz.txt txts/gyonyoru_vagy.txt txts/nezz_testver_fel.txt txts/07_szent_vagy.txt txts/08_isten_baranya.txt txts/jezus_aldott_legyel.txt txts/beke_istene.txt txts/maria_hozzad_szall.txt txts/osanna.txt txts/_evk29.txt" O=outs/20241020.dia
