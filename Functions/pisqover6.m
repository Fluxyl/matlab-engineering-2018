function [N,estVal] = pisqover6(tol)
%PISQOVER6 This function takes a tolerance and checks how many iterations
%   it will take to get to a number within that tolerance.
%
%   [N,estVal] = pisqover6(tol) This program calculates the value of
%   pi^2/6, then uses the tolerance value provided by the user, along with
%   a summation calculation, to see how many iterations it takes to get
%   within the difference of pi^2/6 - temp2.
%
%   Input:
%   tol         The amount of tolerance between the estimatated and actual
%                   values of pi^2/6.
%
%   Output:
%   N      The amount of iterations required to be within the
%                   tolerance.
%   estVal      The estimated value of pi^2/6

%   Author: Fluxyl
%   Date: October 16, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux
iter = 1
temp1 = 0
temp2 = 0
while ((pi^2)/6) - temp2 > tol & iter < 5000
    temp1 = 1/iter^2;
    temp2 = temp2 + temp1;
    iter = iter + 1;
end
N = iter-1
estVal = temp2