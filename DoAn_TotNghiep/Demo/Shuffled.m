function [odata] = Shuffled(idata,n)
% [odata] = Shuffled(idata,n)
% n: so lan muon tron
for i=1:n
    odata = idata(randperm(size(idata,1)),:);
end
end

