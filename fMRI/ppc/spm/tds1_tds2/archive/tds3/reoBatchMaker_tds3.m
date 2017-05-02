%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% reoBatchMaker.m
%
% ~WEM3 [120210]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This is a batch script to reorient images based on manually determined 
% parameters. Using this instead of entering the params into a pre-existing
% script saves considerable time and tedium. MORE IMPORTANTLY, it reduces
% the extent to which the noise of human error is introduced into the data
% (because we all know that tedious pasting into scripts leads to
% mistakes).
%
% Execute: 
%          prior to any spm8 ppc steps if 'jiggling' funk --> anatomical 
%         
%          after coreg if anat --> mean funk...)
%
% call spm_jobman configuration so that our new jobs save properly

spm_jobman('initcfg')

%
% Make your [n x 12] matrix in Excel, and then copy/paste it into the
% MATLAB Command Window like this: 

% (NOTE: the code underneath won't affect
% successful execution of the script, but is there w/o comment to provide 
% a more salient example).

% whatevsies = [... % name a variable anything you want, press enter
    
%    'your pasted matrix (sans single quotes)' % instead of typing, just Paste the cells you copied in Excel 
    
%   ] % actually type this bracket, press enter


      % NOTE: there's no semicolon.  That way, a MATLAB formatted matrix 
      % will be printed to the Command Window.  This way, you can just copy
      % what's in the command window, and the formatting will look even 
      %when you paste the matrix into this here script)

% reo params: determined via spm8 Display, recorded in Excel

reoParams = [... % copy the data from the MATLAB Command Window, paste it below   
%~(CHANGE ME)~
    
%   right     forward   up        pitch     roll      yaw       [x y z] zoom (always = [1 1 1])      [x y z] shear (always = [0 0 0])  

1	13	-4	-0.03	0.03	0	1	1	1	0	0	0
2	10	-19	0.02	0.05	0.05	1	1	1	0	0	0

   ];

% subList = a cell string (a list of strings in cell format) of subject
% names. You don't need the paths, just the names of each subject's folder
% at the ~/Studies/YourStudy/Subjects/ level

subList = {... 
%~(CHANGE ME)~

'401'
'405'

};

% subPath = the path to the Subjects directory 

subPath = '/vxfsvol/home/research/tds/fMRI/subjects/tds3';
% ~(CHANGE ME)~

% reoJobDir = the folder where you want all the spm jobs to go
% (essentially, pick a name and location for the equivalent of
% spmbatch_jobs folder)

reoJobDir = '/vxfsvol/home/research/tds/fMRI/scripts/ppc/spm/tds1/_reo_jobs';
% ~(CHANGE ME)~

% an empty cell that will hold a list of individual subjects' directories

subDir = cell(1,length(subList));

% a cell to hold the reorientation parameters for each subject

reoVec = cell(1,length(subList));

% loop over subjects

for i=1:length(subList);
    
    % get the subject's directory info
    
    subDir{i}=fullfile(subPath,subList{i},'/');
    
    % put the reoParams for that subject into a cell
    
    reoVec{i}=reoParams(i,:);
    

% this is the matlabbatch code that would be generated by the spm8 Batch
% Editor GUI if you chose 'File Selector (Batch Mode)' and 'Reorient'. What
% we're doing here is essentially just a more nuts & bolts version of 
% spmbatch.  The jobs will end up in reoJobDir.

matlabbatch{1}.cfg_basicio.file_fplist.dir = subDir(i);
matlabbatch{1}.cfg_basicio.file_fplist.filter = '(ru.*nii|mprage.nii)';
matlabbatch{1}.cfg_basicio.file_fplist.rec = 'FPListRec';
matlabbatch{2}.spm.util.reorient.srcfiles(1) = cfg_dep;
matlabbatch{2}.spm.util.reorient.srcfiles(1).tname = 'Images to reorient';
matlabbatch{2}.spm.util.reorient.srcfiles(1).tgt_spec{1}(1).name = 'class';
matlabbatch{2}.spm.util.reorient.srcfiles(1).tgt_spec{1}(1).value = 'cfg_files';
matlabbatch{2}.spm.util.reorient.srcfiles(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.util.reorient.srcfiles(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.util.reorient.srcfiles(1).sname = 'File Selector (Batch Mode): Selected Files (b_)';
matlabbatch{2}.spm.util.reorient.srcfiles(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.util.reorient.srcfiles(1).src_output = substruct('.','files');
matlabbatch{2}.spm.util.reorient.transform.transprm = reoParams(i,:);
matlabbatch{2}.spm.util.reorient.prefix = 'o';

save((strcat(reoJobDir,filesep,subList{i},'_reo.mat')),'matlabbatch');

end
