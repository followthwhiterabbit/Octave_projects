# this script solves an invertible matrix with gaussian_forward and back_substitution
function [results, d, c] = gaussian_script(A)

#A = rand(10, 10);
x = ones(1, size(A)(1))';
d = det(A);
c = cond(A);

b = A*x; # our general form of the equation

results = zeros(3, 3); # 3 by 3 zeros matrix to input our values

# the first solution is to use the inverse of a matrix
x1 = inv(A)*b;
results(1, 1) = norm(x-x1);
results(1, 2) = norm(x-x1)/norm(x);
results(1, 3) = norm(b - A*x1);


# second solution is to find x using gauss elimination method
[matrix1, matrix2] = gaussian_eli(A, b); # matrix1 returns an upper triangular matrix
new_matrix2 = back_substitution(matrix1, matrix2); # returns the b matrix which will be multiplied with Identity matrix to reveal the result


x2 = new_matrix2;
results(2, 1) = norm(x-x2);
results(2, 2) = norm(x-x2)/norm(x);
results(2, 3) = norm(b - A*x2);

#third solution is to solve gaussian elimination with Cramer's formulas

x3 = Cramer(A, b);
results(3, 1) = norm(x - x3);
results(3, 2) = norm(x - x2)/norm(x);
results(3, 3) = norm(b - A*x2);


#{
disp(x)
fprintf("\n")
disp(x1)
fprintf("\n")
disp(x2)
fprintf("\n")
disp(x3)
#}



endfunction

