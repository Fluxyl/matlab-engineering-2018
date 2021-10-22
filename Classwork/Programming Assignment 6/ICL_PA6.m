% File Name: ICL_PA6.m
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 10/10/2018
% Last Revised On: 10/10/2018
% 
% Purpose: This assignment is intended to help us learn about summation,
%           usage of while loops, and using tolerances to find values that 
%           would be hard to find by hand.
%             
% Variable List:
%   x           The variable that holds the x value for use in calculation.
%   userTol     The tolerance value provided by the user.
%   sinVal      The value of sin(x), used for comparison and at the end.
%   estVal      The estimated value that is compared to sinVal using
%                   summation.
%   n           The actual value being plugged into the Taylor formula.
%                   Also doubles as a tally counter for how many times the 
%                    while loop ran.
%   
%
%-----Input----------------------------------------------------------------
% Clear command window and workspace, as well as set the command window to
%   the top.
clc
clear
home

% Ask the user for a value of x (measured in radians).
x = input('Please provide a value for x, in radians.\n: ');

% Ask the user for a +-Tolerance-+ value.
userTol = input('\nNow, please provide a value for tolerance.\n: ');


%% -----Processing-----------------------------------------------------------
% First, determine the value for sin(x).
sinVal = sin(x);

% Next, pre-allocate and setup your variables used in calculations.
estVal = 0;
n = 0;
% Now, setup the taylor function inside of a while loop.
%   Check the difference of sin(x) and n, then take the absolute value, and
%       compare it to see if it's within the user's tolerance.


while abs(sinVal-estVal) > userTol && n < 1000
    estVal = ((-1)^(n))*((x^(2*n+1))/factorial(2*n+1))+estVal;
    n = n + 1;

end

%-----Output---------------------------------------------------------------
% Output the correct information as stated in the assignmeent.
home
disp(sprintf('\nUsing %d terms, the Taylor series approximation to sin(%g) is %g and the actual value is %f.',n,x,estVal,sinVal))



