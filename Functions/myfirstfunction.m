% Function Notes

% To make a function, it must follow the following syntax.

function [out1, out2] = myfirstfunction(in1, in2, in3)
%
% This creates a function called myfirst function which requires 3 inputs,
%   and returns 2 outputs.
%   If there is more than one output, surround in square brackets.
%   When creating a function, the function name must be the same as the
%       m-file name.

out1 = in1+in2;
out2 = in3-out1;

 