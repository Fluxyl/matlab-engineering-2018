%% Header
%Filename:  OCL_Creating_Arrays.m
%--------------------------------------------------------------------------
% Fluxyl
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
    vector1 = 10:-1:3;
%This creates a vector with numbers ranging from 10 to 3, -1 being the 
    %space between each number.
    
    vector2 = 1:0.3:3.2;
%Same deal as above, except the numbers range from 1 to 3.2, and are spaced
    %0.3 apart.

    vector3 = 1:0.4:10;
%Same deal, except the range is from 1:10, with 0.4 number spacing.

%% Problem 2
    vector4 = linspace(0,10);
%This creates a vector of 100 numbers between 0 and 10, including them.

    vector5 = linspace (0,10,10);
%Same deal as above, except instead of 100 numbers, there are only 10.

    vector6 = linspace(0,10,11);
%Same deal as above, except there are 11 numbers. This will incorporate
    %1 more number versus vector 5.

%% Problem 3
    vector7 = logspace(0,5,5);
%Creates a vector of 5 numbers between 0 and 5 in logrithmic style.

    vector8 = logspace(0,5,6);
%Same as above, except there are six numbers. Multiples of 10.

%% Problem 4
    array1 = diag(0:4);
%This command creates an array of diagnal numbers going from 0 to 4.

    array2 = diag(vector8);
%This takes the values from vector8, and lays them out diagnally.

    array3 = diag(1:3,2);
%Same as first example, except the diagnal numbers are shifted right by two


%% Problem 5
    eye(5);
%This creates a diagnal column of 1's in a 5x5 matrix.

    eye(2,5);
%This creates a 2-row 5-column, and places 1's in a diagnal line. 

    ones(5);
%This creates a 5x5 matrix of 1's.

    ones(2,8);
%This creates a 2x8 matrix of 1's.

    zeros(2,8);
%Same as above, except with 0's.

    rand(5);
%Creates a 5x5 matrix of random numbers between 0 and 1.

    rand(2,5);
%Creates a 2x5 matrix of random numbers between 0 and 1.

    randi(5);
%Creates a 5x5 matrix of random integer numbers.

    blkdiag(5,10,15,15,15);
%Creates a 5x5 matrix with those numbers diagnally intersecting.

%% Problem 6
%Use a built-in function to create a vector called time that contains 50
%numbers evenly spaced from 10 to 1000.
    time = linspace(10,1000);
    
%% Problem 7 ????
%Use a built-in function to create a vector called rate that contains 50
%logarithmically spaced numbers from 10^2 to 10^20.
    rate = logspace(10,1000)
    
%% Problem 8
% Use colon notation to create a vector called threes that ranges from 0 to
% 99, inclusive, in increments of 3.
    threes = 0:3:99;
    
%% Problem 9
%Create 4 different matrices
    %matrix1 = create a 3x3 matrix by individually typing in the values
    %1-9.
    matrix1 = [1:3;4:6;7:9];
    
    %matrix2 = Use a built in function to create a 2x4 matrix that contains
    %all zeroes.
    matrix2 = zeros(2,4);
    
    %matrix3 = Use a built-in function to create a 4x4 matrix that contains
    %randomly generated values between 0 and 1.
    matrix3 = rand(4);
    
    %matrix 4 = Use a built-in function to create a 4x4 matrix that
    %contains -5 , 3, -2, and 9 on the diagonal and zeros everywhere else.
    matrix4 = blkdiag(-5,3,-2,9);
    
