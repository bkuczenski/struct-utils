function C=ccrop(C);
% crop trailing rows and columns of 2-d cell array C that are entirely NaN
L=cisnan(C);
% crop trailing NaN columns
Le=all(L,1);
C=C(:,1:max(find(~Le)));
% crop trailing NaN rows
Le=all(L,2);
C=C(1:max(find(~Le)),:);
