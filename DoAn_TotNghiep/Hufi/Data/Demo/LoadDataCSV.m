%% Heart Disease Prediction
%-Lenh xoa 
clear ALL;
clc;

%% Open data file
%-Doc file csv
data = readtable('DSSV_3K.csv');

%% Pool data
%-Chuyen du lieu kieu table ve kieu du lieu double, bo cot cuoi ("name")
Data = table2array(data);

%-Dem so dong, cot
% [row,col] = size(Data);

%-Tron

% tron=Shuffled(Data,10);

y = Data(:,52);

x=Data(:,1:51);

%% Standardize Data
%-Chuan hoa cot phan lop du lieu theo chuan {0,1} (khong dau, co dau)
Y = StandardizeColTo1and0(y,1);

