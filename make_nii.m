function make_nii(coords, normals, intensity, radius, depth, filename, std)
    [N, dat] = make_nifti_object(filename, std);

    [start_balls, mid_balls, end_balls] = get_balls(coords, normals, radius, depth, dat.dim);

    if(length(intensity)==1)
        dat(mid_balls(:,1)) = intensity/2;
        dat(start_balls(:,1)) = intensity;
        dat(end_balls(:,1)) = intensity;
    else
        dat(mid_balls(:,1)) = intensity(mid_balls(:,2));
        dat(start_balls(:,1)) = intensity(start_balls(:,2));
        dat(end_balls(:,1)) = intensity(end_balls(:,2));
    end
    
    create(N);
end