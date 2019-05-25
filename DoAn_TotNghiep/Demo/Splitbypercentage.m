function [Data_train,Data_test] = Splitbypercentage(idata,percent_train)
% [Data_train,Data_test] = Splitbypercentage(idata,percent_train)
% Chia du lieu ra lam 2 phan
% 1. train
% 2. test
% idata: du lieu can phan chia
% percent_train: la phan tram cua Data_train, nhan gia tri la 1 so thap.
% vd: 0.1 (10%)
Endrow = size(idata,1);
Rowtrain = int32(percent_train * size(idata,1));
Data_train = idata(1:Rowtrain,:);
Data_test = idata((Rowtrain + 1):Endrow,:);
end

