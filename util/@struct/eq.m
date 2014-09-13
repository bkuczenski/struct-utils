function L=eq(S1,S2)
% test if two structures are equal by testing if all their fields are equal.

FN=fieldnames(S1);

if nargout==0
    verbose=true;
else
    verbose=false;
end
L=true;

if ~all(isfield(S2,FN))
  disp('Different fields!')
  L=false;
  return
end
if length(S1)~=length(S2)
    fprintf('Structure arrays have different lengths S1=%d; S2=%d\n',length(S1), ...
            length(S2))
    L=false;
    return
end

for i=1:length(FN)
    try
        fieldchk=([S1.(FN{i})]==[S2.(FN{i})]);
    catch
        fprintf('Comparison failed on field %s\n',FN{i})
        fieldchk=false;
    end
  if ~all(fieldchk)
      L=false;
      if verbose
          fprintf('Structures differ on field %s: records ',FN{i})
          d=find(~fieldchk);
          fprintf('%d ',d);
      
          fprintf('\n')
      else
          return
      end
  end
end
