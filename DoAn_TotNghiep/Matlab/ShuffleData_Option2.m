%% Heart Disease Prediction (Continues)
%-Them cot phan lop
DataSD = [x,Y];
% DataSD = [DataF,y];

%% Option.2: Process, Shuffle Data and Split data by percentage
%-Xu ly, tach ra 2 phan 0 va 1
[Data0,Data1] = DivideFollowLabel(DataSD);

%-Tron du lieu
Data0_shuffled = Shuffled(Data0,10);
Data1_shuffled = Shuffled(Data1,10);

%-Chia du lieu sau khi tron ra lam 2 phan: train va test
[Data0_shuffled_train,Data0_shuffled_test]=Splitbypercentage(Data0_shuffled,0.7);
[Data1_shuffled_train,Data1_shuffled_test]=Splitbypercentage(Data1_shuffled,0.7);

%-Gop du lieu
Data_shuffled_train = [Data0_shuffled_train;Data1_shuffled_train];
Data_shuffled_test = [Data0_shuffled_test;Data1_shuffled_test];

%% Take label y_train va y_test
%-Lay nhan~ cua datatrain va datatest
y_train = Data_shuffled_train(:,size(Data_shuffled_train,2));
y_test = Data_shuffled_test(:,size(Data_shuffled_test,2));

%% Create DataTrain and DataTest
%-Tao datatrain va datatest
DataS_train = Data_shuffled_train(:,1:(size(Data_shuffled_train,2)-1));
DataS_test = Data_shuffled_test(:,1:(size(Data_shuffled_test,2)-1));

%% Next file RunAlgorithm