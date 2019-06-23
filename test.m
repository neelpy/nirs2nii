type = 'a';
[spm1, spm2] = uigetfile;
spm = strcat(spm2,spm1);
clear spm1 spm2
[b1, b2] = uigetfile;
betas = strcat(b2,b1);
clear b1 b2
std = '2mm';
nirs2nii(type, 10, 25, spm, betas, std);
clear