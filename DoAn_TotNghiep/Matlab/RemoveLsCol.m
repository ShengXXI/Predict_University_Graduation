function [odata] = RemoveLsCol(idata,List_col)
% [odata] = RemoveLsCol(idata,List_col)
% Xoa cot theo danh sach
% List_col: danh sach cot nhieu~, vd: list = [1,2,3];
for i=size(List_col,2):-1:1
    idata(:,List_col(1,i))=[];
end
odata=idata;
end

