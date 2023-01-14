# gaussian elimination codes
# Forward-substitution
function [U, y] = gaussian_eli(A, b)

U = A;
y = b;

# first we need to have pivot in every row in the matrix

for p = 1:size(A)(1)

if (U(p, p) != 0)
  s = 1 / U(p, p);
  y(p) = s * y(p);
endif

  for c = p:size(A)(1)
    U(p, c) = s * U(p, c);

  endfor

  for r = p+1:size(A)(1)
    s = -U(r, p);
    y(r) = y(r) + s*y(p);

    for c = p:size(A)(1)
      U(r, c) = U(r, c) + s*U(p, c);

    endfor

  endfor


endfor


endfunction

