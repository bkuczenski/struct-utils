function C=cisnan(C)
% function b=cisnan(C)
% returns a logical array the same size as C with 1 where C is NaN and 0 otherwise.
% 
C(~cellfun(@isnumeric,C))=deal({0});
C=cellfun(@isnan,C);
