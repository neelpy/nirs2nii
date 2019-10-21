# nirs2nii
Project the results of the nirsSPM analysis on a T1 image of a patient's brain anatomy (NIfTI file).

## Setup and Installation
* This application is developed using the App Designer of MATLAB R2019a.
* It needs two MATLAB libraries [niftimatlib](https://sourceforge.net/projects/niftilib/files/niftimatlib/niftimatlib-1.2/niftimatlib-1.2.tar.gz/download) and [SPM12](https://www.fil.ion.ucl.ac.uk/spm/software/download).
* Download and install [nirs2nii.mlappinstall](https://github.com/neelpatel224/nirs2nii/blob/master/nirs2nii.mlappinstall) ([guide](http://www.fluortools.com/misc/install/apps))
* Set paths of both the libraries in MATLAB ([guide](https://in.mathworks.com/help/matlab/matlab_env/add-remove-or-reorder-folders-on-the-search-path.html))

## Usage
* Select the nirsSPM results file which can be found in (.. -> nirsSPM -> spm_data -> nirsSPM_NIRS...oxyHb.mat)
* Select the p-values from the nirsSPM results. (Location: .. -> nirsSPM -> spm_data -> MAT -> nirsSPM_NIRS_......_pValues.mat)
* Select the NIfTI file of the patient's anatomy (T1 raw .nii file) on which the channels with high p-values need to be highlighted
* Select other options as default. (You can change them afterwards if required)
* Click on Run, the process will take appx. 5-7 minutes. The results will be generated in results_{datetime} folder and 'wchannels.nii' is the desired overlay file.
