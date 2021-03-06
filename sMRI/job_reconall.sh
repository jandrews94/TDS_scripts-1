#!/bin/bash
#
# This script runs FreeSurfer 6.0 recon-all
# and extracts the data, which includes the
# all morphological measurements at vertex
# and parcellated scales. Run this script
# by running the batch_reconall.sh file
# and calling on subject_list.txt
#

echo -e "\nSetting Up Freesurfer5.3"

source /projects/dsnlab/tds/sMRI/scripts/SetUpFreeSurfer.sh 

echo -e "\nFreesurfer Home is $FREESURFER_HOME"

echo -e "\nThe Subject Directory is $SUBJECTS_DIR"

echo -e "\Running recon-all on ${SUBID}"

recon-all -i /home/flournoy/data/tds/BIDS_data/"${SUBID}"/ses-wave1/anat/"${SUBID}"_ses-wave1_T1w.nii.gz -subjid "${SUBID}" -all
