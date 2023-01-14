# this function creates a random nxn matrix with coefficient
function [A] = Test_matrix (n,coef)

  B = coef*rand(n,n);
  C = coef*rand(n,n);
  d = coef*rand(1,n);

  [qB,rB] = qr(B);
  [qC,rC] = qr(C);

  A = qB*diag(d)*qC;



endfunction
