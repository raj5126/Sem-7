% Matrix Creation A
A = [6 43 2 11 87;
     12 6 34 0 5;
     34 18 7 41 9]
%Find va
va = A(2,:)

%Find vb
vb = [A(:,4)']

%Find vc
vc = [A(1,:) A(2,:)]

%Find vd    
vd = [A(:,2)' A(:,5)']