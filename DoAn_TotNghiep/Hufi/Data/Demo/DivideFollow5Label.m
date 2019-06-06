function [data0,data1,data2,data3,data4] = DivideFollow5Label(idata)
% [data0,data1] = DivideFollowLabel(idata)
% idata: du lieu can chia
% data0: du lieu co cot label_0
% data1: du lieu co cot label_1
% data2: du lieu co cot label_2s
% data3: du lieu co cot label_3
% data4: du lieu co cot label_4
j0 = 1;
j1 = 1;
j2 = 1;
j3 = 1;
j4 = 1;
for i=1:size(idata,1)
    if idata(i,size(idata,2))==0
        data0(j0,:) = idata(i,:);
        j0 = j0 + 1;
    end
    if idata(i,size(idata,2))==1
        data1(j1,:) = idata(i,:);
        j1 = j1 + 1;
    end
    if idata(i,size(idata,2))==2
        data2(j2,:) = idata(i,:);
        j2 = j2 + 1;
    end
    if idata(i,size(idata,2))==3
        data3(j3,:) = idata(i,:);
        j3 = j3 + 1;
    end
    if idata(i,size(idata,2))==4
        data4(j4,:) = idata(i,:);
        j4 = j4 + 1;
    end
end
end

