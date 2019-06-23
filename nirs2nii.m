function dir = nirs2nii(type, radius, depth, spm, betas, std)
    load(spm);
    load(betas);
    probes = spmData.nirsInfo.probeInfo.probes;
    
    dir = strcat('results_', datestr(now, 'yyyy-mm-dd-HHMMSS'));
    mkdir(dir)

    if(type=='a' || type=='s')
        make_nii(probes.coords_s3, probes.normals_s, 10, radius, depth, strcat(dir,'\sources.nii'), std)
    end
    if(type=='a' || type=='d')
        make_nii(probes.coords_d3, probes.normals_d, 10, radius, depth, strcat(dir,'\detectors.nii'), std)
    end
    if(type=='a' || type=='c')
        make_nii(probes.coords_c3, probes.normals_c, data', radius, depth, strcat(dir,'\channels.nii'), std)
    end
end