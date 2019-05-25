function [Table] = ConfusionTable(dem0_true,dem0_false,dem1_true,dem1_false)
% [Table] = ConfusionTable(dem0_true,dem0_false,dem1_true,dem1_false)
% Tao bang Confusion
Table = {"Yes","No","ClassDistribute";0,0,"Yes_test = 1";0,0,"No_test = 0"};
Table{2,1}=dem1_true(1,1);
Table{3,1}=dem0_false(1,1);
Table{2,2}=dem1_false(1,1);
Table{3,2}=dem0_true(1,1);
Table{2,4}=dem1_true(1,1) + dem1_false(1,1);
Table{3,4}=dem0_true(1,1) + dem0_false(1,1);
end

