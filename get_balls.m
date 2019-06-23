function [start, mid, endb] = get_balls(coords, normals, radius, depth, dim)
    mm = 182/dim(1);
    mat_start = cor2mni(10*coords, mm) + 1;
    [n, ~] = size(mat_start);
    mat_end = cor2mni(10*coords-normals*depth, mm) + 1;
    mat_mid = [];
    ind = 1:n;
    for var=1:(radius/2):depth
        temp = cor2mni(10*coords-normals*var, mm);
        temp(:,4) = ind';
        mat_mid = [mat_mid; temp];
    end
    mat_mid(:,1:3) = mat_mid(:,1:3) + 1;

    [m, ~] = size(mat_mid);
    xn=dim(1); yn=dim(2); zn=dim(3);
    [i,j,k] = ndgrid(1:xn,1:yn,1:zn);

    mid = [];
    for var=1:m
        x=mat_mid(var,1); y=mat_mid(var,2); z=mat_mid(var,3);
        temp = find((i-x).^2+(j-y).^2+(k-z).^2 < (radius/4)^2);
        temp(:,2) = mat_mid(var,4);
        mid = [mid; temp];
    end

    start = [];
    endb = [];
    for var=1:n
        x=mat_start(var,1); y=mat_start(var,2); z=mat_start(var,3);
        temp = find((i-x).^2+(j-y).^2+(k-z).^2 < (radius/2)^2);
        temp(:,2) = var;
        start = [start; temp];

        x=mat_end(var,1); y=mat_end(var,2); z=mat_end(var,3);
        temp = find((i-x).^2+(j-y).^2+(k-z).^2 < (radius/2)^2);
        temp(:,2) = var;
        endb = [endb; temp];
    end

end