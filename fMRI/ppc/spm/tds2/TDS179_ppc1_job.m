%-----------------------------------------------------------------------
% Job saved on 28-Apr-2017 16:41:54 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.coreg.estimate.ref = {'/projects/dsnlab/SPM12/canonical/avg152T1.nii,1'};
matlabbatch{1}.spm.spatial.coreg.estimate.source = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/structurals/mprage.nii,1'};
matlabbatch{1}.spm.spatial.coreg.estimate.other = {''};
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.phase = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/fmaps/fieldmap.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.magnitude = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/fmaps/fieldmap_01.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsfile = {'/projects/dsnlab/tds/TDS_scripts/fMRI/ppc/spm/tds2/pm_defaults_tds.m'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(1).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/cyb1/cyb1_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(2).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/cyb2/cyb2_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(3).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop3/stop3_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(4).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop4/stop4_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(5).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop5/stop5_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(6).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop6/stop6_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(7).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop7/stop7_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(8).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop8/stop8_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.session(9).epi = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/vid1/vid1_0001.nii,1'};
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.matchvdm = 1;
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.sessname = 'session';
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.writeunwarped = 1;
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.anat = '';
matlabbatch{2}.spm.tools.fieldmap.calculatevdm.subj.matchanat = 0;
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/cyb1'};
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^cyb1*';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/cyb2'};
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^cyb2*';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop3'};
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop3*';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop4'};
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop4*';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop5'};
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop5*';
matlabbatch{7}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{8}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop6'};
matlabbatch{8}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop6*';
matlabbatch{8}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop7'};
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop7*';
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/stop8'};
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^stop8*';
matlabbatch{10}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/tds/fMRI/subjects_tds2/179/vid1'};
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^vid1*';
matlabbatch{11}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{12}.spm.spatial.realignunwarp.data(1).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^cyb1*)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(1).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 1)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{1}));
matlabbatch{12}.spm.spatial.realignunwarp.data(2).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^cyb2*)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(2).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 2)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{2}));
matlabbatch{12}.spm.spatial.realignunwarp.data(3).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop3*)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(3).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 3)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{3}));
matlabbatch{12}.spm.spatial.realignunwarp.data(4).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop4*)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(4).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 4)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{4}));
matlabbatch{12}.spm.spatial.realignunwarp.data(5).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop5*)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(5).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 5)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{5}));
matlabbatch{12}.spm.spatial.realignunwarp.data(6).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop6*)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(6).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 6)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{6}));
matlabbatch{12}.spm.spatial.realignunwarp.data(7).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop7*)', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(7).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 7)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{7}));
matlabbatch{12}.spm.spatial.realignunwarp.data(8).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^stop8*)', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(8).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 8)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{8}));
matlabbatch{12}.spm.spatial.realignunwarp.data(9).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^vid1*)', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.spatial.realignunwarp.data(9).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 9)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{9}));
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.quality = 0.9;
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.sep = 2;
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.fwhm = 4;
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.rtm = 1;
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.einterp = 4;
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.ewrap = [0 0 0];
matlabbatch{12}.spm.spatial.realignunwarp.eoptions.weight = '';
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.basfcn = [12 12];
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.regorder = 1;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.lambda = 100000;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.jm = 0;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.fot = [4 5];
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.sot = [];
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.uwfwhm = 4;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.rem = 1;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.noi = 5;
matlabbatch{12}.spm.spatial.realignunwarp.uweoptions.expround = 'Average';
matlabbatch{12}.spm.spatial.realignunwarp.uwroptions.uwwhich = [2 1];
matlabbatch{12}.spm.spatial.realignunwarp.uwroptions.rinterp = 4;
matlabbatch{12}.spm.spatial.realignunwarp.uwroptions.wrap = [0 0 0];
matlabbatch{12}.spm.spatial.realignunwarp.uwroptions.mask = 0;
matlabbatch{12}.spm.spatial.realignunwarp.uwroptions.prefix = 'ru';
matlabbatch{13}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.source(1) = cfg_dep('Realign & Unwarp: Unwarped Mean Image', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','meanuwr'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(1) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 1)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(2) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 2)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(3) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 3)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(4) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 4)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{4}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(5) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 5)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{5}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(6) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 6)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{6}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(7) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 7)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{7}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(8) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 8)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{8}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.other(9) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 9)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{9}, '.','uwrfiles'));
matlabbatch{13}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{13}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{13}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{13}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{14}.spm.spatial.preproc.channel.vols(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{14}.spm.spatial.preproc.channel.biasreg = 0.001;
matlabbatch{14}.spm.spatial.preproc.channel.biasfwhm = 60;
matlabbatch{14}.spm.spatial.preproc.channel.write = [0 0];
matlabbatch{14}.spm.spatial.preproc.tissue(1).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,1'};
matlabbatch{14}.spm.spatial.preproc.tissue(1).ngaus = 2;
matlabbatch{14}.spm.spatial.preproc.tissue(1).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(1).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.tissue(2).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,2'};
matlabbatch{14}.spm.spatial.preproc.tissue(2).ngaus = 2;
matlabbatch{14}.spm.spatial.preproc.tissue(2).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(2).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.tissue(3).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,3'};
matlabbatch{14}.spm.spatial.preproc.tissue(3).ngaus = 2;
matlabbatch{14}.spm.spatial.preproc.tissue(3).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(3).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.tissue(4).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,4'};
matlabbatch{14}.spm.spatial.preproc.tissue(4).ngaus = 3;
matlabbatch{14}.spm.spatial.preproc.tissue(4).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(4).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.tissue(5).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,5'};
matlabbatch{14}.spm.spatial.preproc.tissue(5).ngaus = 4;
matlabbatch{14}.spm.spatial.preproc.tissue(5).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(5).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.tissue(6).tpm = {'/projects/dsnlab/SPM12/tpm/TPM.nii,6'};
matlabbatch{14}.spm.spatial.preproc.tissue(6).ngaus = 2;
matlabbatch{14}.spm.spatial.preproc.tissue(6).native = [1 1];
matlabbatch{14}.spm.spatial.preproc.tissue(6).warped = [1 0];
matlabbatch{14}.spm.spatial.preproc.warp.mrf = 1;
matlabbatch{14}.spm.spatial.preproc.warp.cleanup = 1;
matlabbatch{14}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{14}.spm.spatial.preproc.warp.affreg = 'mni';
matlabbatch{14}.spm.spatial.preproc.warp.fwhm = 0;
matlabbatch{14}.spm.spatial.preproc.warp.samp = 2;
matlabbatch{14}.spm.spatial.preproc.warp.write = [0 0];
