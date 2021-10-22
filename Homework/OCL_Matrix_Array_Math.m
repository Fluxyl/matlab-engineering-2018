% EGR-Flux-3B Fall 2018
% {Teacher name removed for privacy}
%
% Start Date: 09/12/18
% Last Revised on: 09/14/18
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
A = [9:7;6:4;3:1];
B = [1:2:3];
C = [4:6;1:3];
D = [-1;1];
E = [1 -2; 3 5];
F = [0 1; 1 0];

%% Problem 6
%A/B doesn't work because the matrix dimensions don't agree.

%A\B Same as above.

%C/B Same as above. 

%C\B Same as above.

%E/D Same as above.

%E\D This works, but i'm not sure why?

%E/F This works, since both matrices are the same size.

%E\F Thiss also works, but it does something different!

%F/D Dimensions don't agree, so it don't work.

%F\D Why does this work? IDK!

%% Problem 7a - System of Equations
const3a = [7; 37]; %This is the constants for problem a.

coef3a = [2 3; -19 -21]; %This is the coefficient matrix for problem a.

coef3ainv = inv(coef3a); %This is the inverted matrix that we need to use.

coef3ainv * coef3a; %This is the identity matrix on the left side of the equation.

sevenasolution = coef3ainv * const3a %This is the final answer.

%% Problem 7b - System of Equations
const3b = [7; -5; 2] %This is the constants for problem b.

coef3b = [2 3 -4; -1 -8 9; 12 7 -1] %This is the coefficients for problem b.

%% Problem 8 - Write the psuedocode
% First, we want to tell the user to input the dimensions for square
% matrices, citing the specific requirments that must be met.
disp(sprintf('\nPlease input a number between 3 and 25!     '))
n = input('');

% Next, we must generate the arrays as stated by the directions. In this
% case, we must use an array of sequential prime numbers. 
primeMat = [primes(n);primes(n);primes(n);primes(n)];

% Next, we must create an array of random integers between n and 10n.
randMat = randi(n,n,10);
% For part d, we must demonstrate that matrix and array addition are
% identical by adding primeMat and randMat.
    %Then, we must output the first 3 rows and 4 columns of the resulting
    %matrikx for each operation.
    %Finally, we must output the averager and total value of all elements
    %in the resulting matrix for each operation.
    
% Demonstrate tyhat matrix and array multiplication are different by
% multiplying primeMat and randMat.
    %Output the first 3 rows and 4 columns of the resulting matrix for each
    %operation.
    %Output the average and total value of all elements in the resulting
    %matrix for each operation.