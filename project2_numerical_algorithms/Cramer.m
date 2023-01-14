# implementation of Cramer's method
function [x] = Cramer(A, b)

  [r, c] = size(A);

  d = det(A);
  x = zeros(r, 1);

 if(d == 0)
  fprintf("The determinant is zero, we have no solution");
 else
  for j=1:r
    B = [A(:,1:j-1), b, A(:, j+1:r)];
    x(j) = det(B)/d;
  endfor

endif

  endfunction
