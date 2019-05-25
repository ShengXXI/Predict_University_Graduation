%% Du doan danh sach sinh vien khoa 06 thong qua thuat toan SVM

dhth06 = readtable('06DHTH.csv');
DHTH06 = table2array(dhth06);
SVMtest06 = predict(SVMModel,DHTH06);
SUM0=sum(SVMtest06==0);
SUM1=sum(SVMtest06==1);