# backward-substitution
function x =  back_substitution(U, y)
  # solves upper-triangular systems Ux = y for x
  x = y; # i initialize the result matrix y to x and do the calculations according to that



  for p = size(U)(1):-1:1
    for r = 1:p-1
      x(r) = x(r) - U(r, p)*x(p)/U(p, p);
    endfor

  endfor




endfunction

