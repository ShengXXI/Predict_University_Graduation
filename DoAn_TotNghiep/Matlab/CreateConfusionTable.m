function [Table] = CreateConfusionTable(test,y_test)
% [Table] = CreateConfusionTable(test,y_test)
% Ket hop 2 ham:
% - [dem0_true,dem0_false,dem1_true,dem1_false] =
% CountConfusion(test,y_test);
% - [Table] = ConfusionTable(dem0_true,dem0_false,dem1_true,dem1_false);
[dem0_true,dem0_false,dem1_true,dem1_false] = CountConfusion(test,y_test);
Table = ConfusionTable(dem0_true,dem0_false,dem1_true,dem1_false);
end

