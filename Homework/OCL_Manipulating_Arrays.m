% EGR-Flux-3B Fall 2018
% {Teacher name removed for privacy}
%
% Start Date: 09/12/18
% Last Revised on: 09/12/18
%
% Purpose: To learn more about MATLAB functions
%
% Variables: 
%   placeholder
% Functions called:     (beyond built-in functions)
%   placeholder
%
%--------------------------------------------------------------------------
% Begin script

%% Problem 1
%First, we must load the variables from the previous assignment.
load Creating_Arrays.mat

%% Problem 2
vector3(15:end);
%This commmand shows us the values in column 15 to the last column.

vector3(15:end-2);
%Same deal as above, except it omits the last two elements of the variable.

matrix4(1,:);
%This shows the first row, but all columns of matrix4.

matrix4(2:4,3);
%This shows the rows 2-4, but only column 3 in those rows.

%% Problem 3
reshape(vector4,10,10);
%Converts vector4 from a 1x100 to a 10x10 vector.

reshape(vector5,3,3);
%This returns an error, since vector5 is 10 elements, not 9.

reshape(matrix1,1,9);
%This converts matrix1 from a 3x3 matrix to a 1x9 matrix.

%% Problem 4
newmat1 = [matrix1(1:2,2:3);matrix3(3:4,2:3)];
%This takes four values from matrix1, and four values from matrix 3, and
%smashes them together.

newmat2 = [matrix1; matrix2];
%This returns an error. Because we are combining two matrices of different
%sizes.

newmat3 = [matrix2; matrix3];
%Since these matrices are the same size, it combined them together. Matrix2
%is a 4x4, and matrix3 is a 4x4.

newmat4 = [matrix2 matrix3];
%This tries to add matrix2 to matrix3 horizonally, but due to the size
%disagreement, it does not work.

newmat5 = [matrix3 matrix4];
%This works, since matrix3 and matrix4 are the same size both column wise
%and row wise.

%% Problem 5
randArray = rand(4);
%Creates a 4x4 array of random numbers between 0 and 1.

diag1 = diag(randArray);
%Takes the numbers in a diagonal like out of randArray, and puts them into a
%new variable known as diag1.

diag2 = diag(randArray,1);
%Same as above, except the diagonal line is shifted right one.

diag3 = diag(randArray,-1);
%Same as above, except the diagonal line is shifted left one.

diag4 = diag(randArray,2);
%Same as above, except the diagonal line is shifted right two.

%% Problem 6

length(newmat1);
%Returns the largest dimension of newmat1, which is 4.

size(newmat1);
%Returns the dimensions of the entire matrix, which is 4x2.

length(newmat2);
%Results in an error, since newmat2 returns an error.

size(newmat2);
%Results in an error, since newmat2 returns an error.

length(newmat3);
%Same as newmat1, resulting in 6.

size(newmat3);
%Same as newmat1, resulting in 6x4.

length(newmat4);
%Results in an error, since newmamt4 doesn't work.

size(newmat4);
%Results in an error, since newmat4 doesn't work.

length(newmat5);
%Same as newmat1, resulting in 8.

size(newmat5);
%Same as newmat1, resulting in 4x8.

%% FINISH PROBLEM 6!

%% Problem 7
array4d = rand(2,3,5,4);
%This creates an array that has two rows, three columns, five layers, and
%four 4d thingis.

a4dlength = length(array4d);
%Calculates the biggest dimension that describes array4d.

a4dsize = size(array4d);
%Calculates the real dimensions of array4d.

[out1, out2] = size(array4d);
%Takes the size of array4d, and assigns the first value to out1, and the
%product of the other 3 values to out2.

[out1, out2, out3] = size(array4d);
%Same deal, except out2 is assigned to the proper second value of the size,
%whereas out3 is the product of the last two values.

[out1, out2, out3, out4] = size(array4d);
%All values for the dimension of the array are assigned correctly here.

[out1, out2, out3, out4, out5] = size(array4d);

%% Problem 8
A = 3*ones(2,3);
B = rand(4,3);
C = diag(3:2:9) + diag(1:3,-1) + diag (-4:-2,1);
D = linspace(10,20,11);
E = rand(2,10);

%% Problem 9
%Use the existing variables to create a new variable.
 
newmat10a = [B(1:2,:);A;B(3:4,:)]
%This creates a new matrix with the first two rows of B, then the two rows
%of A, and then the last two rows of B.

newmat10b =     