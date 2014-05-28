function C=approx(A,B,tol)
% function C=approx(A,B,tol)
% Like eq, but allows for small variation.  approx(A,B,tol) returns true if
% abs(A-B)./A<tol.  
%
% if B==0, returns true if abs(A)<tol.  Likewise for A==0.
%
% Default tol is 1e-5.
if nargin<3 ; tol=1e-5; end

Ia=find(A==0);
Ib=find(B==0);
Ic=(~Ia & ~Ib);

C(Ia)=(abs(B(Ia))<tol);
C(Ib)=(abs(A(Ib))<tol);
C(Ic)=(abs(A(Ic)-B(Ic))./A(Ic))<tol;
