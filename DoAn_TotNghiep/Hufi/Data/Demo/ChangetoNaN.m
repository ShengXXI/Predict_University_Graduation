function [odata,kq] = ChangetoNaN(idata,value)
% [odata,kq] = ChangetoNaN(idata,value)
% idata: ma tran dau vao
% odata: ma tran dau ra
% value: gia tri can thay doi
% kq: tra ve so luong value da thay doi
kq = [];
odata = idata;
for i=1:size(idata,2)
    demvalue = 0;
    for j=1:size(idata,1)
        if idata(j,i) == value
            odata(j,i) = NaN;
            demvalue = demvalue + 1;
        end
    end
    kq = [kq,demvalue];
end
end

