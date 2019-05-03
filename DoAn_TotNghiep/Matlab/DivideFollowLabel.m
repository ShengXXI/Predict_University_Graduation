function [data0,data1] = DivideFollowLabel(idata)
% [data0,data1] = DivideFollowLabel(idata)
% idata: du lieu can chia
% data0: du lieu co cot label_0
% data1: du lieu co cot label_1
j0 = 1;
j1 = 1;
for i=1:size(idata,1)
    if idata(i,size(idata,2))==0
        data0(j0,:) = idata(i,:);
        j0 = j0 + 1;
    end
    if idata(i,size(idata,2))~=0
        data1(j1,:) = idata(i,:);
        j1 = j1 + 1;
    end
end
end

