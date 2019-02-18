#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=TDS_allconds_nopmods_3dmvm
#SBATCH --output=output/allcons_nppmods_3dmvm.log
#SBATCH --error=output/allcons_3dmvm_nopmods_error.log
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=28
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=short,fat

module load prl afni/17.3.00
export LD_PRELOAD=/packages/gcc/7.2/lib64/libstdc++.so

cd /projects/dsnlab/shared/tds/fMRI/analysis/rx/ylg/all/tds2/3dMVM_nopmod/OutcomesXContext
	3dMVM -prefix OutcomesXContextTDS2_nopmod \
	-jobs 28 \
	-wsVars  "Outcome*Context" \
	-SS_type 3 \
	-num_glt 76 \
	-gltLabel 1 'Out_AL-SE' -gltCode 1  'Context : 1*AL -1*SE' \
	-gltLabel 2 'Out_AL-PR' -gltCode 2  'Context : 1*AL -1*PR' \
	-gltLabel 3 'Out_PR-SE' -gltCode 3  'Context : 1*PR -1*SE' \
	-gltLabel 4 'Out_soc_vs_al' -gltCode 4  'Context : 1*PR +1*SE -2*AL' \
	-gltLabel 5 'Out_all_vs_ex' -gltCode 5  'Context : 1*PR +1*AL -2*SE' \
	-gltLabel 6 'Out_all_vs_pr' -gltCode 6  'Context : 1*SE +1*AL -2*PR' \
	-gltLabel 7 'GoOutcome_AL-SE' -gltCode 7  'Outcome : 1*GoGood +1*GoBad Context : 1*AL -1*SE' \
	-gltLabel 8 'GoOutcome_AL-PR' -gltCode 8  'Outcome : 1*GoGood +1*GoBad Context : 1*AL -1*PR' \
	-gltLabel 9 'GoOutcome_PR-SE' -gltCode 9  'Outcome : 1*GoGood +1*GoBad Context : 1*PR -1*SE' \
	-gltLabel 10 'GoOutcome' -gltCode 10  'Outcome : 1*GoGood +1*GoBad' \
	-gltLabel 11 'GoOutcome_social_vs_alone' -gltCode 11  'Outcome : 1*GoGood +1*GoBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 12 'GoOutcome_all_vs_exclux' -gltCode 12  'Outcome : 1*GoGood +1*GoBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 13 'GoOutcome_all_vs_peer' -gltCode 13  'Outcome : 1*GoGood +1*GoBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 14 'StopO_AL-SE' -gltCode 14  'Outcome : 1*StopGood +1*StopBad Context : 1*AL -1*SE' \
	-gltLabel 15 'StopO_AL-PR' -gltCode 15 'Outcome : 1*StopGood +1*StopBad Context : 1*AL -1*PR' \
	-gltLabel 16 'StopO_PR-SE' -gltCode 16 'Outcome : 1*StopGood +1*StopBad Context : 1*PR -1*SE' \
	-gltLabel 17 'StopOutcome' -gltCode 17 'Outcome : 1*StopGood +1*StopBad' \
	-gltLabel 18 'StopOutcome_social_vs_alone' -gltCode 18  'Outcome : 1*StopGood +1*StopBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 19 'StopOutcome_all_vs_exclux' -gltCode 19  'Outcome : 1*StopGood +1*StopBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 20 'StopOutcome_all_vs_peer' -gltCode 20  'Outcome : 1*StopGood +1*StopBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 21 'GoOutcome_StopOutcome_AL-SE' -gltCode 21  'Outcome :  1*GoGood & 1*GoBad -1*StopGood & 1*StopBad  Context : 1*AL -1*SE' \
	-gltLabel 22 'GoOutcome_StopOutcome_AL-PR' -gltCode 22  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad Context : 1*AL -1*PR' \
	-gltLabel 23 'GoOutcome_StopOutcome_PR-SE' -gltCode 23  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad Context : 1*PR -1*SE' \
	-gltLabel 24 'GoOutcome_StopOutcome' -gltCode 24  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad' \
	-gltLabel 25 'GoOutcome_StopOutcome_social_vs_alone' -gltCode 25  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 26 'GoOutcome_StopOutcome_all_vs_exclux' -gltCode 26  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 27 'GoOutcome_StopOutcome_all_vs_peer' -gltCode 27  'Outcome : 1*GoGood & 1*GoBad -1*StopGood & 1*StopBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 28 'Good_AL-SE' -gltCode 28  'Outcome : 1*GoGood +1*StopGood Context : 1*AL -1*SE' \
	-gltLabel 29 'Good_AL-PR' -gltCode 29  'Outcome : 1*GoGood +1*StopGood Context : 1*AL -1*PR' \
	-gltLabel 30 'Good_PR-SE' -gltCode 30  'Outcome : 1*GoGood +1*StopGood Context : 1*PR -1*SE' \
	-gltLabel 31 'GoodOutcome' -gltCode 31  'Outcome : 1*GoGood +1*StopGood' \
	-gltLabel 32 'GoodOutcome_social_vs_alone' -gltCode 32  'Outcome : 1*GoGood +1*StopGood Context : 1*PR +1*SE -2*AL' \
	-gltLabel 33 'GoodOutcome_all_vs_exclux' -gltCode 33  'Outcome : 1*GoGood +1*StopGood Context : 1*PR +1*AL -2*SE' \
	-gltLabel 34 'GoodOutcome_all_vs_peer' -gltCode 34  'Outcome : 1*GoGood +1*StopGood Context : 1*SE +1*AL -2*PR' \
	-gltLabel 35 'Bad_AL-SE' -gltCode 35  'Outcome : 1*GoBad +1*StopBad Context : 1*AL -1*SE' \
	-gltLabel 36 'Bad_AL-PR' -gltCode 36  'Outcome : 1*GoBad +1*StopBad Context : 1*AL -1*PR' \
	-gltLabel 37 'Bad_PR-SE' -gltCode 37  'Outcome : 1*GoBad +1*StopBad Context : 1*PR -1*SE' \
	-gltLabel 38 'BadOutcome' -gltCode 38  'Outcome : 1*GoBad +1*StopBad' \
	-gltLabel 39 'BadOutcome_social_vs_alone' -gltCode 39  'Outcome : 1*GoBad +1*StopBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 40 'BadOutcome_all_vs_exclux' -gltCode 40  'Outcome : 1*GoBad +1*StopBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 41 'BadOutcome_all_vs_peer' -gltCode 41  'Outcome : 1*GoBad +1*StopBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 42 'Good_Bad_AL-SE' -gltCode 42  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*AL -1*SE' \
	-gltLabel 43 'Good_Bad_AL-PR' -gltCode 43  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*AL -1*PR' \
	-gltLabel 44 'Good_Bad_PR-SE' -gltCode 44  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*PR -1*SE' \
	-gltLabel 45 'Good_Bad' -gltCode 45  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad' \
	-gltLabel 46 'Good_Bad_social_vs_alone' -gltCode 46  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 47 'Good_Bad_all_vs_exclux' -gltCode 47  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 48 'Good_Bad_all_vs_peer' -gltCode 48  'Outcome : 1*StopGood & 1*GoGood -1*StopBad & 1*GoBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 49 'GoodGoOutcome' -gltCode 49  'Outcome : 1*GoGood' \
	-gltLabel 50 'GoodGoOutcome_AL-SE' -gltCode 50  'Outcome : 1*GoGood  Context : 1*AL -1*SE' \
	-gltLabel 51 'GoodGoOutcome_AL-PR' -gltCode 51  'Outcome : 1*GoGood Context : 1*AL -1*PR' \
	-gltLabel 52 'GoodGoOutcome_PR-SE' -gltCode 52  'Outcome : 1*GoGood Context : 1*PR -1*SE' \
	-gltLabel 53 'GoodGoOutcome_social_vs_alone' -gltCode 53  'Outcome : 1*GoGood Context : 1*PR +1*SE -2*AL' \
	-gltLabel 54 'GoodGoOutcome_all_vs_exclux' -gltCode 54  'Outcome : 1*GoGood Context : 1*PR +1*AL -2*SE' \
	-gltLabel 55 'GoodGoOutcome_all_vs_peer' -gltCode 55  'Outcome : 1*GoGood Context : 1*SE +1*AL -2*PR' \
	-gltLabel 56 'BadGoOutcome' -gltCode 56  'Outcome : 1*GoBad' \
	-gltLabel 57 'BadGoOutcome_AL-SE' -gltCode 57  'Outcome : 1*GoBad  Context : 1*AL -1*SE' \
	-gltLabel 58 'BadGoOutcome_AL-PR' -gltCode 58 'Outcome : 1*GoBad Context : 1*AL -1*PR' \
	-gltLabel 59 'BadGoOutcome_PR-SE' -gltCode 59  'Outcome : 1*GoBad Context : 1*PR -1*SE' \
	-gltLabel 60 'BadGoOutcome_social_vs_alone' -gltCode 60  'Outcome : 1*GoBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 61 'BadGoOutcome_all_vs_exclux' -gltCode 61  'Outcome : 1*GoBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 62 'BadGoOutcome_all_vs_peer' -gltCode 62  'Outcome : 1*GoBad Context : 1*SE +1*AL -2*PR' \
	-gltLabel 63 'GoodStopOutcome' -gltCode 63  'Outcome : 1*StopGood Context : 1*AL +1*PR +1*SE' \
	-gltLabel 64 'GoodStopOutcome_AL-SE' -gltCode 64  'Outcome : 1*StopGood Context : 1*AL -1*SE' \
	-gltLabel 65 'GoodStopOutcome_AL-PR' -gltCode 65 'Outcome : 1*StopGood Context : 1*AL -1*PR' \
	-gltLabel 66 'GoodStopOutcome_PR-SE' -gltCode 66 'Outcome : 1*StopGood Context : 1*PR -1*SE' \
	-gltLabel 67 'GoodStopOutcome_social_vs_alone' -gltCode 67  'Outcome : 1*StopGood Context : 1*PR +1*SE -2*AL' \
	-gltLabel 68 'GoodStopOutcome_all_vs_exclux' -gltCode 68  'Outcome : 1*StopGood Context : 1*PR +1*AL -2*SE' \
	-gltLabel 69 'GoodStopOutcome_all_vs_peer' -gltCode 69  'Outcome : 1*StopGood Context : 1*SE +1*AL -2*PR' \
	-gltLabel 70 'BadStopOutcome' -gltCode 70  'Outcome : 1*StopBad Context : 1*AL +1*PR +1*SE' \
	-gltLabel 71 'BadStopOutcome_AL-SE' -gltCode 71  'Outcome : 1*StopBad Context : 1*AL -1*SE' \
	-gltLabel 72 'BadStopOutcome_AL-PR' -gltCode 72  'Outcome : 1*StopBad Context : 1*AL -1*PR' \
	-gltLabel 73 'BadStopOutcome_PR-SE' -gltCode 73  'Outcome : 1*StopBad Context : 1*PR -1*SE' \
	-gltLabel 74 'BadStopOutcome_social_vs_alone' -gltCode 74  'Outcome : 1*StopBad Context : 1*PR +1*SE -2*AL' \
	-gltLabel 75 'BadStopOutcome_all_vs_exclux' -gltCode 75  'Outcome : 1*StopBad Context : 1*PR +1*AL -2*SE' \
	-gltLabel 76 'BadStopOutcome_all_vs_peer' -gltCode 76  'Outcome : 1*StopBad Context : 1*SE +1*AL -2*PR' \
	-mask /projects/dsnlab/shared/tds/fMRI/analysis/masks/tds2/tds2_gw_smoothed_group_average_optthr_2mm.nii \
	-dataTable 				\
	Subj Outcome Context Group InputFile \
	109	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0006.nii \
	109	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0016.nii \
	109	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0026.nii \
	109	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0009.nii \
	109	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0019.nii \
	109	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0029.nii \
	109	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0007.nii \
	109	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0017.nii \
	109	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0027.nii \
	109	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0010.nii \
	109	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0020.nii \
	109	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0030.nii \
	113	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0006.nii \
	113	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0016.nii \
	113	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0026.nii \
	113	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0009.nii \
	113	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0019.nii \
	113	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0029.nii \
	113	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0007.nii \
	113	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0017.nii \
	113	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0027.nii \
	113	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0010.nii \
	113	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0020.nii \
	113	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0030.nii \
	114	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0006.nii \
	114	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0016.nii \
	114	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0026.nii \
	114	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0009.nii \
	114	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0019.nii \
	114	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0029.nii \
	114	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0007.nii \
	114	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0017.nii \
	114	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0027.nii \
	114	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0010.nii \
	114	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0020.nii \
	114	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0030.nii \
	115	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0006.nii \
	115	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0016.nii \
	115	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0026.nii \
	115	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0009.nii \
	115	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0019.nii \
	115	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0029.nii \
	115	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0007.nii \
	115	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0017.nii \
	115	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0027.nii \
	115	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0010.nii \
	115	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0020.nii \
	115	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0030.nii \
	116	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0006.nii \
	116	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0016.nii \
	116	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0026.nii \
	116	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0009.nii \
	116	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0019.nii \
	116	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0029.nii \
	116	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0007.nii \
	116	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0017.nii \
	116	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0027.nii \
	116	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0010.nii \
	116	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0020.nii \
	116	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0030.nii \
	117	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0006.nii \
	117	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0016.nii \
	117	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0026.nii \
	117	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0009.nii \
	117	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0019.nii \
	117	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0029.nii \
	117	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0007.nii \
	117	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0017.nii \
	117	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0027.nii \
	117	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0010.nii \
	117	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0020.nii \
	117	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0030.nii \
	119	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0006.nii \
	119	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0016.nii \
	119	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0026.nii \
	119	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0009.nii \
	119	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0019.nii \
	119	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0029.nii \
	119	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0007.nii \
	119	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0017.nii \
	119	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0027.nii \
	119	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0010.nii \
	119	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0020.nii \
	119	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0030.nii \
	120	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0006.nii \
	120	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0016.nii \
	120	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0026.nii \
	120	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0009.nii \
	120	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0019.nii \
	120	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0029.nii \
	120	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0007.nii \
	120	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0017.nii \
	120	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0027.nii \
	120	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0010.nii \
	120	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0020.nii \
	120	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0030.nii \
	121	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0006.nii \
	121	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0016.nii \
	121	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0026.nii \
	121	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0009.nii \
	121	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0019.nii \
	121	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0029.nii \
	121	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0007.nii \
	121	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0017.nii \
	121	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0027.nii \
	121	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0010.nii \
	121	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0020.nii \
	121	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0030.nii \
	122	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0006.nii \
	122	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0016.nii \
	122	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0026.nii \
	122	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0009.nii \
	122	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0019.nii \
	122	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0029.nii \
	122	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0007.nii \
	122	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0017.nii \
	122	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0027.nii \
	122	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0010.nii \
	122	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0020.nii \
	122	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0030.nii \
	124	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0006.nii \
	124	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0016.nii \
	124	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0026.nii \
	124	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0009.nii \
	124	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0019.nii \
	124	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0029.nii \
	124	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0007.nii \
	124	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0017.nii \
	124	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0027.nii \
	124	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0010.nii \
	124	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0020.nii \
	124	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0030.nii \
	125	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0006.nii \
	125	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0016.nii \
	125	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0026.nii \
	125	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0009.nii \
	125	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0019.nii \
	125	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0029.nii \
	125	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0007.nii \
	125	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0017.nii \
	125	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0027.nii \
	125	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0010.nii \
	125	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0020.nii \
	125	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0030.nii \
	126	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0006.nii \
	126	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0016.nii \
	126	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0026.nii \
	126	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0009.nii \
	126	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0019.nii \
	126	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0029.nii \
	126	StopGood	AL 	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0007.nii \
	126	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0017.nii \
	126	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0027.nii \
	126	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0010.nii \
	126	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0020.nii \
	126	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0030.nii \
	128	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0006.nii \
	128	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0016.nii \
	128	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0026.nii \
	128	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0009.nii \
	128	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0019.nii \
	128	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0029.nii \
	128	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0007.nii \
	128	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0017.nii \
	128	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0027.nii \
	128	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0010.nii \
	128	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0020.nii \
	128	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0030.nii \
	129	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0006.nii \
	129	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0016.nii \
	129	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0026.nii \
	129	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0009.nii \
	129	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0019.nii \
	129	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0029.nii \
	129	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0007.nii \
	129	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0017.nii \
	129	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0027.nii \
	129	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0010.nii \
	129	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0020.nii \
	129	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0030.nii \
	130	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0006.nii \
	130	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0016.nii \
	130	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0026.nii \
	130	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0009.nii \
	130	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0019.nii \
	130	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0029.nii \
	130	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0007.nii \
	130	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0017.nii \
	130	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0027.nii \
	130	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0010.nii \
	130	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0020.nii \
	130	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0030.nii \
	131	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0006.nii \
	131	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0016.nii \
	131	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0026.nii \
	131	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0009.nii \
	131	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0019.nii \
	131	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0029.nii \
	131	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0007.nii \
	131	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0017.nii \
	131	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0027.nii \
	131	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0010.nii \
	131	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0020.nii \
	131	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0030.nii \
	132	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0006.nii \
	132	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0016.nii \
	132	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0026.nii \
	132	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0009.nii \
	132	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0019.nii \
	132	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0029.nii \
	132	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0007.nii \
	132	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0017.nii \
	132	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0027.nii \
	132	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0010.nii \
	132	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0020.nii \
	132	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0030.nii \
	133	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0006.nii \
	133	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0016.nii \
	133	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0026.nii \
	133	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0009.nii \
	133	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0019.nii \
	133	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0029.nii \
	133	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0007.nii \
	133	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0017.nii \
	133	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0027.nii \
	133	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0010.nii \
	133	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0020.nii \
	133	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0030.nii \
	134	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0006.nii \
	134	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0016.nii \
	134	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0026.nii \
	134	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0009.nii \
	134	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0019.nii \
	134	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0029.nii \
	134	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0007.nii \
	134	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0017.nii \
	134	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0027.nii \
	134	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0010.nii \
	134	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0020.nii \
	134	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0030.nii \
	136	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0006.nii \
	136	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0016.nii \
	136	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0026.nii \
	136	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0009.nii \
	136	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0019.nii \
	136	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0029.nii \
	136	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0007.nii \
	136	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0017.nii \
	136	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0027.nii \
	136	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0010.nii \
	136	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0020.nii \
	136	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0030.nii \
	140	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0006.nii \
	140	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0016.nii \
	140	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0026.nii \
	140	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0009.nii \
	140	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0019.nii \
	140	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0029.nii \
	140	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0007.nii \
	140	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0017.nii \
	140	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0027.nii \
	140	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0010.nii \
	140	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0020.nii \
	140	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0030.nii \
	141	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0006.nii \
	141	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0016.nii \
	141	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0026.nii \
	141	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0009.nii \
	141	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0019.nii \
	141	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0029.nii \
	141	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0007.nii \
	141	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0017.nii \
	141	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0027.nii \
	141	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0010.nii \
	141	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0020.nii \
	141	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0030.nii \
	142	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0006.nii \
	142	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0016.nii \
	142	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0026.nii \
	142	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0009.nii \
	142	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0019.nii \
	142	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0029.nii \
	142	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0007.nii \
	142	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0017.nii \
	142	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0027.nii \
	142	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0010.nii \
	142	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0020.nii \
	142	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0030.nii \
	144	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0006.nii \
	144	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0016.nii \
	144	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0026.nii \
	144	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0009.nii \
	144	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0019.nii \
	144	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0029.nii \
	144	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0007.nii \
	144	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0017.nii \
	144	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0027.nii \
	144	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0010.nii \
	144	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0020.nii \
	144	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0030.nii \
	145	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0006.nii \
	145	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0016.nii \
	145	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0026.nii \
	145	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0009.nii \
	145	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0019.nii \
	145	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0029.nii \
	145	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0007.nii \
	145	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0017.nii \
	145	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0027.nii \
	145	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0010.nii \
	145	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0020.nii \
	145	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0030.nii \
	146	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0006.nii \
	146	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0016.nii \
	146	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0026.nii \
	146	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0009.nii \
	146	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0019.nii \
	146	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0029.nii \
	146	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0007.nii \
	146	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0017.nii \
	146	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0027.nii \
	146	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0010.nii \
	146	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0020.nii \
	146	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0030.nii \
	150	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0006.nii \
	150	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0016.nii \
	150	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0026.nii \
	150	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0009.nii \
	150	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0019.nii \
	150	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0029.nii \
	150	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0007.nii \
	150	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0017.nii \
	150	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0027.nii \
	150	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0010.nii \
	150	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0020.nii \
	150	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0030.nii \
	151	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0006.nii \
	151	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0016.nii \
	151	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0026.nii \
	151	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0009.nii \
	151	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0019.nii \
	151	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0029.nii \
	151	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0007.nii \
	151	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0017.nii \
	151	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0027.nii \
	151	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0010.nii \
	151	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0020.nii \
	151	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0030.nii \
	152	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0006.nii \
	152	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0016.nii \
	152	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0026.nii \
	152	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0009.nii \
	152	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0019.nii \
	152	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0029.nii \
	152	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0007.nii \
	152	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0017.nii \
	152	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0027.nii \
	152	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0010.nii \
	152	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0020.nii \
	152	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0030.nii \
	155	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0006.nii \
	155	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0016.nii \
	155	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0026.nii \
	155	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0009.nii \
	155	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0019.nii \
	155	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0029.nii \
	155	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0007.nii \
	155	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0017.nii \
	155	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0027.nii \
	155	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0010.nii \
	155	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0020.nii \
	155	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0030.nii \
	156	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0006.nii \
	156	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0016.nii \
	156	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0026.nii \
	156	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0009.nii \
	156	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0019.nii \
	156	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0029.nii \
	156	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0007.nii \
	156	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0017.nii \
	156	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0027.nii \
	156	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0010.nii \
	156	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0020.nii \
	156	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0030.nii \
	157	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0006.nii \
	157	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0016.nii \
	157	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0026.nii \
	157	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0009.nii \
	157	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0019.nii \
	157	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0029.nii \
	157	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0007.nii \
	157	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0017.nii \
	157	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0027.nii \
	157	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0010.nii \
	157	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0020.nii \
	157	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0030.nii \
	159	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0006.nii \
	159	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0016.nii \
	159	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0026.nii \
	159	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0009.nii \
	159	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0019.nii \
	159	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0029.nii \
	159	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0007.nii \
	159	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0017.nii \
	159	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0027.nii \
	159	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0010.nii \
	159	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0020.nii \
	159	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0030.nii \
	160	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0006.nii \
	160	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0016.nii \
	160	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0026.nii \
	160	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0009.nii \
	160	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0019.nii \
	160	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0029.nii \
	160	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0007.nii \
	160	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0017.nii \
	160	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0027.nii \
	160	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0010.nii \
	160	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0020.nii \
	160	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0030.nii \
	161	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0006.nii \
	161	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0016.nii \
	161	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0026.nii \
	161	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0009.nii \
	161	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0019.nii \
	161	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0029.nii \
	161	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0007.nii \
	161	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0017.nii \
	161	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0027.nii \
	161	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0010.nii \
	161	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0020.nii \
	161	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0030.nii \
	162	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0006.nii \
	162	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0016.nii \
	162	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0026.nii \
	162	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0009.nii \
	162	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0019.nii \
	162	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0029.nii \
	162	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0007.nii \
	162	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0017.nii \
	162	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0027.nii \
	162	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0010.nii \
	162	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0020.nii \
	162	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0030.nii \
	163	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0006.nii \
	163	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0016.nii \
	163	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0026.nii \
	163	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0009.nii \
	163	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0019.nii \
	163	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0029.nii \
	163	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0007.nii \
	163	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0017.nii \
	163	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0027.nii \
	163	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0010.nii \
	163	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0020.nii \
	163	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0030.nii \
	164	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0006.nii \
	164	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0016.nii \
	164	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0026.nii \
	164	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0009.nii \
	164	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0019.nii \
	164	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0029.nii \
	164	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0007.nii \
	164	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0017.nii \
	164	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0027.nii \
	164	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0010.nii \
	164	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0020.nii \
	164	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0030.nii \
	165	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0006.nii \
	165	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0016.nii \
	165	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0026.nii \
	165	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0009.nii \
	165	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0019.nii \
	165	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0029.nii \
	165	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0007.nii \
	165	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0017.nii \
	165	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0027.nii \
	165	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0010.nii \
	165	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0020.nii \
	165	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0030.nii \
	167	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0006.nii \
	167	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0016.nii \
	167	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0026.nii \
	167	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0009.nii \
	167	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0019.nii \
	167	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0029.nii \
	167	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0007.nii \
	167	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0017.nii \
	167	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0027.nii \
	167	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0010.nii \
	167	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0020.nii \
	167	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0030.nii \
	168	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0006.nii \
	168	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0016.nii \
	168	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0026.nii \
	168	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0009.nii \
	168	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0019.nii \
	168	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0029.nii \
	168	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0007.nii \
	168	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0017.nii \
	168	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0027.nii \
	168	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0010.nii \
	168	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0020.nii \
	168	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0030.nii \
	169	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0006.nii \
	169	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0016.nii \
	169	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0026.nii \
	169	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0009.nii \
	169	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0019.nii \
	169	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0029.nii \
	169	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0007.nii \
	169	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0017.nii \
	169	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0027.nii \
	169	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0010.nii \
	169	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0020.nii \
	169	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0030.nii \
	170	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0006.nii \
	170	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0016.nii \
	170	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0026.nii \
	170	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0009.nii \
	170	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0019.nii \
	170	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0029.nii \
	170	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0007.nii \
	170	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0017.nii \
	170	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0027.nii \
	170	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0010.nii \
	170	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0020.nii \
	170	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0030.nii \
	171	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0006.nii \
	171	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0016.nii \
	171	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0026.nii \
	171	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0009.nii \
	171	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0019.nii \
	171	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0029.nii \
	171	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0007.nii \
	171	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0017.nii \
	171	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0027.nii \
	171	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0010.nii \
	171	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0020.nii \
	171	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0030.nii \
	172	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0006.nii \
	172	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0016.nii \
	172	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0026.nii \
	172	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0009.nii \
	172	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0019.nii \
	172	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0029.nii \
	172	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0007.nii \
	172	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0017.nii \
	172	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0027.nii \
	172	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0010.nii \
	172	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0020.nii \
	172	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0030.nii \
	173	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0006.nii \
	173	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0016.nii \
	173	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0026.nii \
	173	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0009.nii \
	173	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0019.nii \
	173	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0029.nii \
	173	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0007.nii \
	173	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0017.nii \
	173	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0027.nii \
	173	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0010.nii \
	173	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0020.nii \
	173	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0030.nii \
	174	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0006.nii \
	174	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0016.nii \
	174	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0026.nii \
	174	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0009.nii \
	174	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0019.nii \
	174	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0029.nii \
	174	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0007.nii \
	174	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0017.nii \
	174	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0027.nii \
	174	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0010.nii \
	174	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0020.nii \
	174	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0030.nii \
	175	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0006.nii \
	175	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0016.nii \
	175	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0026.nii \
	175	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0009.nii \
	175	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0019.nii \
	175	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0029.nii \
	175	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0007.nii \
	175	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0017.nii \
	175	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0027.nii \
	175	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0010.nii \
	175	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0020.nii \
	175	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0030.nii \
	177	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0006.nii \
	177	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0016.nii \
	177	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0026.nii \
	177	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0009.nii \
	177	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0019.nii \
	177	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0029.nii \
	177	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0007.nii \
	177	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0017.nii \
	177	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0027.nii \
	177	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0010.nii \
	177	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0020.nii \
	177	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0030.nii \
	178	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0006.nii \
	178	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0016.nii \
	178	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0026.nii \
	178	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0009.nii \
	178	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0019.nii \
	178	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0029.nii \
	178	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0007.nii \
	178	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0017.nii \
	178	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0027.nii \
	178	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0010.nii \
	178	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0020.nii \
	178	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0030.nii \
	179	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0006.nii \
	179	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0016.nii \
	179	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0026.nii \
	179	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0009.nii \
	179	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0019.nii \
	179	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0029.nii \
	179	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0007.nii \
	179	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0017.nii \
	179	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0027.nii \
	179	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0010.nii \
	179	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0020.nii \
	179	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0030.nii \
	181	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0006.nii \
	181	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0016.nii \
	181	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0026.nii \
	181	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0009.nii \
	181	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0019.nii \
	181	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0029.nii \
	181	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0007.nii \
	181	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0017.nii \
	181	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0027.nii \
	181	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0010.nii \
	181	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0020.nii \
	181	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0030.nii \
	182	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0006.nii \
	182	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0016.nii \
	182	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0026.nii \
	182	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0009.nii \
	182	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0019.nii \
	182	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0029.nii \
	182	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0007.nii \
	182	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0017.nii \
	182	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0027.nii \
	182	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0010.nii \
	182	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0020.nii \
	182	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0030.nii \
	183	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0006.nii \
	183	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0016.nii \
	183	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0026.nii \
	183	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0009.nii \
	183	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0019.nii \
	183	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0029.nii \
	183	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0007.nii \
	183	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0017.nii \
	183	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0027.nii \
	183	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0010.nii \
	183	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0020.nii \
	183	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0030.nii \
	184	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0006.nii \
	184	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0016.nii \
	184	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0026.nii \
	184	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0009.nii \
	184	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0019.nii \
	184	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0029.nii \
	184	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0007.nii \
	184	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0017.nii \
	184	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0027.nii \
	184	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0010.nii \
	184	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0020.nii \
	184	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0030.nii \
	185	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0006.nii \
	185	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0016.nii \
	185	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0026.nii \
	185	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0009.nii \
	185	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0019.nii \
	185	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0029.nii \
	185	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0007.nii \
	185	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0017.nii \
	185	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0027.nii \
	185	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0010.nii \
	185	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0020.nii \
	185	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0030.nii \
	186	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0006.nii \
	186	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0016.nii \
	186	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0026.nii \
	186	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0009.nii \
	186	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0019.nii \
	186	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0029.nii \
	186	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0007.nii \
	186	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0017.nii \
	186	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0027.nii \
	186	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0010.nii \
	186	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0020.nii \
	186	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0030.nii \
	187	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0006.nii \
	187	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0016.nii \
	187	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0026.nii \
	187	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0009.nii \
	187	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0019.nii \
	187	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0029.nii \
	187	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0007.nii \
	187	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0017.nii \
	187	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0027.nii \
	187	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0010.nii \
	187	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0020.nii \
	187	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0030.nii \
	188	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0006.nii \
	188	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0016.nii \
	188	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0026.nii \
	188	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0009.nii \
	188	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0019.nii \
	188	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0029.nii \
	188	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0007.nii \
	188	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0017.nii \
	188	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0027.nii \
	188	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0010.nii \
	188	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0020.nii \
	188	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0030.nii \
	190	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0006.nii \
	190	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0016.nii \
	190	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0026.nii \
	190	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0009.nii \
	190	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0019.nii \
	190	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0029.nii \
	190	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0007.nii \
	190	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0017.nii \
	190	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0027.nii \
	190	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0010.nii \
	190	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0020.nii \
	190	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0030.nii \
	192	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0006.nii \
	192	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0016.nii \
	192	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0026.nii \
	192	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0009.nii \
	192	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0019.nii \
	192	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0029.nii \
	192	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0007.nii \
	192	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0017.nii \
	192	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0027.nii \
	192	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0010.nii \
	192	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0020.nii \
	192	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0030.nii \
	193	GoGood	AL control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0006.nii \
	193	GoGood	PR control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0016.nii \
	193	GoGood	SE control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0026.nii \
	193	GoBad	AL control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0009.nii \
	193	GoBad	PR control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0019.nii \
	193	GoBad	SE control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0029.nii \
	193	StopGood	AL control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0007.nii \
	193	StopGood	PR control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0017.nii \
	193	StopGood	SE control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0027.nii \
	193	StopBad	AL control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0010.nii \
	193	StopBad	PR control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0020.nii \
	193	StopBad	SE control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0030.nii \
	194	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0006.nii \
	194	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0016.nii \
	194	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0026.nii \
	194	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0009.nii \
	194	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0019.nii \
	194	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0029.nii \
	194	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0007.nii \
	194	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0017.nii \
	194	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0027.nii \
	194	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0010.nii \
	194	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0020.nii \
	194	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0030.nii \
	195	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0006.nii \
	195	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0016.nii \
	195	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0026.nii \
	195	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0009.nii \
	195	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0019.nii \
	195	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0029.nii \
	195	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0007.nii \
	195	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0017.nii \
	195	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0027.nii \
	195	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0010.nii \
	195	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0020.nii \
	195	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0030.nii \
	196	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0006.nii \
	196	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0016.nii \
	196	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0026.nii \
	196	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0009.nii \
	196	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0019.nii \
	196	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0029.nii \
	196	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0007.nii \
	196	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0017.nii \
	196	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0027.nii \
	196	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0010.nii \
	196	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0020.nii \
	196	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0030.nii \
	197	GoGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0006.nii \
	197	GoGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0016.nii \
	197	GoGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0026.nii \
	197	GoBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0009.nii \
	197	GoBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0019.nii \
	197	GoBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0029.nii \
	197	StopGood	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0007.nii \
	197	StopGood	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0017.nii \
	197	StopGood	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0027.nii \
	197	StopBad	AL	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0010.nii \
	197	StopBad	PR	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0020.nii \
	197	StopBad	SE	control	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0030.nii \
