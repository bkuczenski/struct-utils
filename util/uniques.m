function g=uniques(ref)
% find unique elements in ref and return them in the order in which they appeared
g=unique(ref);
for i=1:length(g)
  if isnumeric(ref)
    firstind(i)=min(find(g(i)==ref));
  else
    firstind(i)=min(find(strcmp(ref,g{i})));
  end
end
[~,I]=sort(firstind);
g=g(I);
