function [odata] = StandardizeColTo1and0(idata,col_idata)
% [odata] = StandardizeColTo1and0(idata,col_idata)
% Chuan hoa du lieu ve dang chi chua {0,1} theo cot
% col_idata la vi tri cot trong idata
for j=size(idata,col_idata):-1:1
    if (idata(j,col_idata)~=0)
        odata(j,col_idata)=1;
    end
end
end

