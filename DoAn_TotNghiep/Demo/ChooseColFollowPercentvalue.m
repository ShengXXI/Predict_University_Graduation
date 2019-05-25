function [kq1,kq] = ChooseColFollowPercentvalue(idata,value,percentvalue)
% [kq1,kq] = ChooseColFollowPercentvalue(idata,value,percentvalue)
% kq: tra ve ket qua
% idata: ma tran dau vao
% value: gia tri can dem phan tram
% percentvalue: phan tram
kq1 = [];   
kq2 = [];
for i=1:size(idata,2)
    demvalue = 0;
    for j=1:size(idata,1)
        if idata(j,i) == value
            demvalue = demvalue + 1;
        end
    end
    if (demvalue * 100 / size(idata,1)) >= percentvalue 
        kq1 = [kq1,i];
        kq2 = [kq2,(demvalue * 100 / size(idata,1))];
    end
end
kq = [kq1;kq2];
end

