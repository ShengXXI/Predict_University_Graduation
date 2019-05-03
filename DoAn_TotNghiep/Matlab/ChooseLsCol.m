function [odata] = ChooseLsCol(idata,List_col)
% [odata] = ChooseLsCol(idata,List_col)
% Chon cot theo danh sach
% List_col: danh sach cot chon, vd: list = [1,2,3];
odata1 = [];
j1 = 1;
for i1=size(List_col,2):-1:1
    odata1(:,j1) = idata(:,List_col(1,i1));
    j1 = j1 + 1;
end
odata = [];
j = 1;
for i=size(odata1,2):-1:1
    odata(:,j) = odata1(:,i);
    j = j + 1;
end
end

