#{
Script to create new matrices and test our functions with it
#}

size_of_the_matrix = input("enter the size of the matrix:");

coeff = input("enter coefficiant of the matrix:");

A = Test_matrix(size_of_the_matrix, coeff);


[res, d, c] = gaussian_script(A)



