%% Heart Disease Prediction

%% Xuat data ra file arff
%-Luu y: Phai chay 1 trong 2 file LoadDataCSV (khong xoa Workspace) truoc khi chay cac dong lenh
% duoi day !
%-Chay file LoadDataCSV option nao` thi theo option do !
%% Option 1.
%-Luu ra Desktop
% arffwrite("C:\Users\VTThien\Desktop\HDP_shuffled_Op1",Data_shuffled);

%-Luu o Current Folder
% arffwrite("HDP_shuffled_Op1",Data_shuffled);

%% Option 2.
%-1. Gop du lieu
% AData = [Data_shuffled_train;Data_shuffled_test];

%--. Luu ra Desktop
% arffwrite("C:\Users\HT\Desktop\HDP_shuffled_Op2_train",AData);

%--. Luu o Current Folder
% arffwrite("HDP_shuffled_Op2",AData);


%-2. Luu tung file rieng le
%--Luu ra Desktop
arffwrite("C:\Users\HT\Desktop\HDP_shuffled_Op2_train",Data_shuffled_train);
arffwrite("C:\Users\HT\Desktop\HDP_shuffled_Op2_test",Data_shuffled_test);

%--Luu o Current Folder
% arffwrite("HDP_shuffled_Op2_train",Data_shuffled_train);
% arffwrite("HDP_shuffled_Op2_test",Data_shuffled_test);

%% The end