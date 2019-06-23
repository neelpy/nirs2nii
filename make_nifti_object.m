% Create .nii file like standard MNI152 but with zero intensity
function [N, dat] = make_nifti_object(filename, std)

    std = strcat('MNI152_T1_', std, '.nii');
    icbm = nifti(std);

    dat = file_array;
    dat.fname = filename;
    dat.dim = icbm.dat.dim;
    dat.dtype = 'FLOAT64-LE';
    dat.offset = icbm.dat.offset;
    dat.scl_slope = icbm.dat.scl_slope;
    dat.scl_inter = icbm.dat.scl_inter;

    N = nifti;
    N.dat = dat;
    N.mat = icbm.mat;
    N.mat_intent = icbm.mat_intent;
    N.mat0 = icbm.mat0;
    N.mat0_intent = icbm.mat0_intent;
    N.timing = icbm.timing;
    N.descrip = 'NIRS SPM generated';
    N.cal = icbm.cal;

    dat(:,:,:)=0;
end