function [dem0_true,dem0_false,dem1_true,dem1_false] = CountConfusion(test,y_test)
% [dem0_true,dem0_false,dem1_true,dem1_false] = CountConfusion(test,y_test)
% test:  ket qua may du doan sau khi hoc
% y_test: cot phan lop trong du lieu test
dem0_true = 0;
dem0_false = 0;
dem1_true = 0;
dem1_false = 0;
for i = 1:size(y_test,1)
    if (y_test(i,1) == 0)
        if (test(i,1) == y_test(i,1))
            dem0_true = dem0_true + 1;
        else dem0_false = dem0_false +1;
        end
    else if (test(i,1) == y_test(i,1))
            dem1_true = dem1_true + 1;
        else dem1_false = dem1_false + 1;
        end
    end
end
end

