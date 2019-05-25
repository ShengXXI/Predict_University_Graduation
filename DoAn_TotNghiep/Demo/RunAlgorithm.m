%% Heart Disease Prediction (Continues)

%% Run algorithm SMO (SVM)
%-Su dung thuat toan SMO (SVM)
%-1. Dua datatrain de may hoc
SVMModel = fitcsvm(DataS_train,y_train);
%-2. Dua datatest de may test
SVMtest = predict(SVMModel,DataS_test);
%-3. So sanh ket qua may du doan voi ket qua goc
ResultTrueSVM = sum(SVMtest == y_test);
%-Do chinh xac cua thuat toan phan lop
AccuracySVM = ResultTrueSVM * 100 / size(y_test,1);

%-Confusion matrix table cho SMO (SVM) sau khi may du doan xong
%- Tao bang confusion
TableSVM = CreateConfusionTable(SVMtest,y_test);

%% Run algorithm J48 (C4.5)
%-Su dung thuat toan J48 (C4.5)
%-1. Dua datatrain de may hoc
TreeModel = fitctree(DataS_train,y_train);
%-2. Dua datatest de may test
Treetest = predict(TreeModel,DataS_test);
%-3. So sanh ket qua may du doan voi ket qua goc
ResultTrueTree = sum(Treetest == y_test);
%-Do chinh xac cua thuat toan phan lop
AccuracyTree = ResultTrueTree * 100 / size(y_test,1);

%-Confusion matrix table cho J48 (C4.5) sau khi may du doan xong
%- Tao bang confusion
TableTree = CreateConfusionTable(Treetest,y_test);

%% NAIVEBAYYES
%-Su dung thuat toan J48 (C4.5)
%-1. Dua datatrain de may hoc
trainNB = fitcnb(DataS_train,y_train);
%-2. Dua datatest de may test
label = predict(trainNB,DataS_test);
%-3. So sanh ket qua may du doan voi ket qua goc
ResultTrueNB = sum(label == y_test);
%-Do chinh xac cua thuat toan phan lop
AccuracyNB = ResultTrueNB * 100 / size(y_test,1);
%- Tao bang confusion
TableNB = CreateConfusionTable(label,y_test);

%% Du doan danh sach sinh vien khoa 06 thong qua thuat toan SVM

dhth06 = readtable('06DHTH.csv');
DHTH06 = table2array(dhth06);
SVMtest06 = predict(SVMModel,DHTH06);
SUM0=sum(SVMtest06==0);
SUM1=sum(SVMtest06==1);


