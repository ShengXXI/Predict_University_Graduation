function [count_0,count_1] = Count0_1(idata)
% [count_0,count_1] = Count0_1(idata,col_index)
% Dem so luong 0 va 1 co trong 1 cot
% idata: du lieu
count_0 = 0;
count_1 = 0;
for i=1:size(idata,1)
    if idata(i,1) == 0
        count_0 = count_0 + 1;
    else
        count_1 = count_1 + 1;
    end
end
end

