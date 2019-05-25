function [odata] = fillmissingfordata(idata)
% [odata] = fillmissingfordata(idata)
% idata: ma tran dau vao
% odata: ma tran dau ra
odata = idata;
for i=1:size(idata,2)
    odata(:,i) = fillmissing(idata(:,i),'linear',1,'EndValues','nearest');
end
end

