function C=cisnan(C)
% 
C(~cellfun(@isnumeric,C))=deal({0});
C=cellfun(@isnan,C);
