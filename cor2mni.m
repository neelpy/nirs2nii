function coordinate = cor2mni(mni, x)

if isempty(mni)
    coordinate = [];
    return;
end

T = [-x     0     0    90;...
     0     x     0  -126;...
     0     0     x   -72;...
     0     0     0     1];

coordinate = [mni(:,1) mni(:,2) mni(:,3) ones(size(mni,1),1)]*(inv(T))';
coordinate(:,4) = [];
coordinate = round(coordinate); 

return;