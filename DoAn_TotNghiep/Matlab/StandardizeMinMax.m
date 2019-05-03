function [kq,odata] = StandardizeMinMax(idata,newmin,newmax)
% [kq,odata] = StandardizeMinMax(idata,newmin,newmax)
% newmin: gia tri nho nhat trong phan doan
% newmax: gia tri lon nhat trong phan doan
kqmax = [];   
kqmin = [];
for i=1:size(idata,2)
   kqmax = [kqmax,max(idata(:,i))];
   kqmin = [kqmin,min(idata(:,i))];
end
kq = [kqmin;kqmax];
odata = idata;
for i=1:size(idata,2)
    dmax = max(idata(:,i));
    dmin = min(idata(:,i));
    for j=1:size(idata,1)
        odata(j,i) = ((odata(j,i) - dmin(1,1))/(dmax(1,1)-dmin(1,1)))*(newmax - newmin) + newmin;
    end
end
end

