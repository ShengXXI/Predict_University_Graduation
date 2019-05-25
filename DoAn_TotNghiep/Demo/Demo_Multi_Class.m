%% Qui tr�nh th?c hi?n Multiclass SVM classifier
%-Lenh xoa
clear ALL;
clc;

%% Open data file
%-??c file csv
data = readtable('DSSV_3K.csv');
Data = table2array(data);

%L?y data c?t ph�n l?p x?p lo?i
y = Data(:,52);

%L?y data nh?ng c?t m�n c�n l?i
x=Data(:,1:51);

%%
%L?y t?ng lo?i ph�n l?p {0->4} ra
[Data0,Data1,Data2,Data3,Data4] = DivideFollow5Label(Data);

%Tr?n m?i lo?i 10 l?n tr??c khi train
Data0_shuffled = Shuffled(Data0,10);
Data1_shuffled = Shuffled(Data1,10);
Data2_shuffled = Shuffled(Data2,10);
Data3_shuffled = Shuffled(Data3,10);
Data4_shuffled = Shuffled(Data4,10);

%%
%L?y 70% ?? train v� 30% ?? test
[Data0_shuffled_train,Data0_shuffled_test]=Splitbypercentage(Data0_shuffled,0.7);
[Data1_shuffled_train,Data1_shuffled_test]=Splitbypercentage(Data1_shuffled,0.7);
[Data2_shuffled_train,Data2_shuffled_test]=Splitbypercentage(Data2_shuffled,0.7);
[Data3_shuffled_train,Data3_shuffled_test]=Splitbypercentage(Data3_shuffled,0.7);
[Data4_shuffled_train,Data4_shuffled_test]=Splitbypercentage(Data4_shuffled,0.7);

%%
%Gom t?t c? c�c lo?i v�o th�nh 1 train chung v� test chung
Data_shuffled_train = [Data0_shuffled_train;Data1_shuffled_train;Data2_shuffled_train;Data3_shuffled_train;Data4_shuffled_train];
Data_shuffled_test = [Data0_shuffled_test;Data1_shuffled_test;Data2_shuffled_test;Data3_shuffled_test;Data4_shuffled_test];

%L?y c?t ph�n l?p (52) ?? so s�nh, ki?m tra sau khi hu?n luy?n
y_train = Data_shuffled_train(:,size(Data_shuffled_train,2));
y_test = Data_shuffled_test(:,size(Data_shuffled_test,2));

%Lo?i c?t ph�n l?p ra ?? hu?n luy?n ph�n l?p trong m� h�nh h?c c� gi�m s�t SVM
DataS_train = Data_shuffled_train(:,1:(size(Data_shuffled_train,2)-1));
DataS_test = Data_shuffled_test(:,1:(size(Data_shuffled_test,2)-1));

%%
%S? d?ng APPS trong matlab r?i ch?n m� h�nh h?c c� gi�m s�t SVM 
%T�m lo?i n�o c� ?? ch�nh s�t cao ?? ?em ?i test
yfit = trainedModel.predictFcn(DataS_test);
ResultTrueSVM = sum(yfit == y_test);
AccuracySVM = ResultTrueSVM * 100 / size(y_test,1);

%%
%Matrix
%Ma tr?n chuy?n v?
Ytest=y_test'+1;
Yfit=yfit'+1;

%C� bao nhi�u gi� tr? trong ma tr?n
m=unique(Ytest);
n=unique(Yfit);

%Ch? s?
A=size(Ytest,2);
M=size(unique(Ytest),2);

B=size(Yfit,2);
N=size(unique(Yfit),2);

%T?o ma tr?n zeros th?a c�c ch? s? tr�n
targets = zeros(M,A);
outputs = zeros(N,B);

%Xu?t v? tr� ma tr?n ?�ng th? t?
targetsIdx = sub2ind(size(targets), Ytest, 1:A);
outputsIdx = sub2ind(size(outputs), Yfit, 1:B);

%So s�nh
targets(targetsIdx) = 1;
outputs(outputsIdx) = 1;

%T?o b?ng ma tr?n
plotconfusion(targets,outputs);

%Ch?nh nh�n trong plotconfusion
h = gca;
h.XTickLabel = {'0','1','2','3','4',''};
h.YTickLabel = {'0','1','2','3','4',''};
h.YTickLabelRotation = 90;
h.XTickLabelRotation = 0;

%%
%Xu?t data qua weka ki?m tra
arffwrite("C:\Users\HT\Desktop\HDP_shuffled_Op2_train",Data_shuffled_train);
arffwrite("C:\Users\HT\Desktop\HDP_shuffled_Op2_test",Data_shuffled_test);

%% 
%Du doan danh sach sinh vien khoa 06 thong qua thuat toan SVM

dhth06 = readtable('06DHTH.csv');
DHTH06 = table2array(dhth06);
SVMtest06 = trainedModel.predictFcn(DHTH06);

%DS "Kh�ng ??t" kh�a 06
SUM0=sum(SVMtest06==0);

%DS "Trung b�nh" kh�a 06
SUM1=sum(SVMtest06==1);

%DS "Kh�" kh�a 06
SUM2=sum(SVMtest06==2);

%DS "Gi?i" kh�a 06
SUM3=sum(SVMtest06==3);

%DS "Xu?t s?c" kh�a 06
SUM4=sum(SVMtest06==4);