function S=enumerate(S,arg)
% function S=enumerate(S)
% adds an enumeration column 'Enum' to a struct (a.k.a.a primary key)
%
% function S=enumerate(S,arg)
% names the column arg instead of 'Enum'

if nargin==1
    arg='Enum';
end
FN=fieldnames(S);
q=num2cell(1:length(S));
[S.(arg)]=deal(q{:});
S=select(S,{arg FN{:}});
