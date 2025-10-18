SHELL:=/bin/bash

all:
	@echo "choose explicit target = type 'make ' and press TAB"

S=scripts
T=txts
I=$T/*
O=outs/out.dia


# ===== MAIN STUFF 

SCRIPT=$S/txt2dia.py
process:
	@echo 'Converting simple txt input to "Diatar" `.dia` format.'
	@echo " input: $I (set it using I=...)"
	@echo " output: $O (set it using O=...)"
	@cat $I | python3 $(SCRIPT) | sed "s/$$//" > $O

20250914:
	make process I="$T/_evk24.txt $T/jojj_szentlelek_jojj_kozenk.txt $T/uram_irgalmazz_sillye.txt $T/dicsoseg_sillye_iii.txt $T/uram_tehozzad_futok.txt $T/gyonyoru_vagy.txt $T/a_fold_es_az_eg.txt $T/szent_vagy_sillye.txt $T/isten_baranya_sillye.txt $T/meghivtal.txt $T/mert_te_uram.txt $T/szentlelek_jojj.txt $T/_evk24.txt" O=outs/20250914.dia

20250615:
	make process I="$T/_sz3sag.txt $T/szentlelek_jojj.txt $T/uram_irgalmazz_sillye.txt $T/tied_a_dicsoseg.txt $T/uram_tehozzad_futok.txt $T/add_a_kezed_hogy.txt $T/fold_es_az_eg.txt $T/szent_vagy_sillye.txt $T/isten_baranya_sillye.txt $T/szono_hi_zen_szekai_ga.txt $T/mert_te_uram.txt $T/indulj_es_menj.txt $T/szono_hi_zen_szekai_ga.txt $T/_sz3sag.txt" O=outs/20250615.dia

20250518:
	make process I="$T/_husv5.txt $T/jojj_itt_az_ido.txt $T/uram_irgalmazz_sillye.txt $T/tied_a_dicsoseg.txt $T/enekelj_az_urnak.txt $T/zengd_velunk.txt $T/apokrif_ima.txt $T/szent_vagy_sillye.txt $T/isten_baranya_sillye.txt $T/anima_christi.txt $T/tobb_erot.txt $T/maria_maria.txt $T/anima_christi.txt $T/_husv5.txt" O=outs/20250518.dia

20250427:
	make process I="$T/_húsv2.txt $T/seigneur_je_viens_vers_toi.txt $T/uram_irgalmazz_bonifac.txt $T/tied_a_dicsoseg.txt $T/szent_szent_a_neve.txt $T/alleluja_augustin.txt $T/aldott_istenunk.txt $T/szent_vagy_bonifac.txt $T/isten_baranya_bonifac.txt $T/tobb_erot.txt $T/izleld_es_lasd.txt $T/zarandokenek.txt $T/seigneur_je_viens_vers_toi.txt $T/_húsv2.txt" O=outs/20250427.dia

20250316:
	make process I="$T/_nagyb2.txt $T/jovok_a_kereszthez.txt $T/uram_irgalmazz_bonifac.txt $T/beke_istene.txt $T/uram_tehozzad_futok.txt $T/arrepientete.txt $T/szent_vagy_bonifac.txt $T/isten_baranya_bonifac.txt $T/tested_jezus.txt $T/o_fiam.txt $T/koszonom_jezus.txt $T/arrepientete.txt $T/_nagyb2.txt" O=outs/20250316.dia

20250216:
	make process I="$T/_evk6.txt $T/itt_vagyok_vegre.txt $T/uram_irgalmazz_bonifac.txt $T/tied_a_dicsoseg.txt $T/04_ropke_fohasz.txt $T/add_a_kezed_hogy.txt $T/01_eled_lepek.txt $T/szent_vagy_bonifac.txt $T/isten_baranya_bonifac.txt $T/pyhan_kosketus.txt $T/csak_jezusnak.txt $T/pyhan_kosketus.txt $T/_evk6.txt" O=outs/20250216.dia

20250119:
	make process I="$T/ebredj_fel_te_ki.txt $T/uram_irgalmazz_bonifac.txt $T/tied_a_dicsoseg.txt $T/enekelj_az_urnak.txt $T/zengd_velunk.txt $T/kenyeret_es_bort_hozunk.txt $T/szent_vagy_bonifac.txt $T/isten_baranya_bonifac.txt $T/bewahre_uns_gott.txt $T/mert_te_uram.txt $T/csak_jezusnak.txt $T/bewahre_uns_gott.txt" O=outs/20250119.dia

20241215:
	make process I="$T/_adv3.txt $T/advent_sotet_fenn.txt $T/02_uram_irgalmazz.txt $T/a_szeleknek.txt $T/ebredj_ember.txt $T/gabriels_message.txt $T/07_szent_vagy.txt $T/08_isten_baranya.txt $T/hivlak_jezus.txt $T/izleld_es_lasd.txt $T/indulj_es_menj.txt $T/gabriels_message.txt $T/_adv3.txt" O=outs/20241215.dia

20241117:
	make process I="$T/_evk33.txt $T/jojj_itt_az_ido.txt $T/02_uram_irgalmazz.txt $T/tied_a_dicsoseg.txt $T/teremts_bennem.txt $T/gyonyoru_vagy.txt $T/izleld_es_lasd.txt $T/07_szent_vagy.txt $T/08_isten_baranya.txt $T/nan_nega_csota.txt $T/meghivtal.txt $T/szent_marton.txt $T/nan_nega_csota.txt $T/_evk33.txt" O=outs/20241117.dia

20241020:
	make process I="$T/_evk29.txt $T/osanna.txt $T/02_uram_irgalmazz.txt $T/03_dicsoseg.txt $T/erot_adsz.txt $T/gyonyoru_vagy.txt $T/nezz_testver_fel.txt $T/07_szent_vagy.txt $T/08_isten_baranya.txt $T/jezus_aldott_legyel.txt $T/beke_istene.txt $T/maria_hozzad_szall.txt $T/osanna.txt $T/_evk29.txt" O=outs/20241020.dia
