function [kq] = Countpercentvalue(idata,value)
% [kq] = Countpercentvalue(idata,value)
% kq: tra ve ket qua
% idata: ma tran dau vao
% value: so nguyen can dem phan tram
kq = [];
for i=1:size(idata,2)
    demvalue = 0;
    for j=1:size(idata,1)
        if idata(j,i) == value
            demvalue = demvalue + 1;
        end
    end
    kq = [kq,(demvalue * 100 / size(idata,1))];
end
end