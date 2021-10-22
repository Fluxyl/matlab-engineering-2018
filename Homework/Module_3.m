%Part 1: Vectorizing Operations

%Let's cover the linspace command!
% linspace(X1, X2) generates a row vector of 100 linearly
%     equally spaced points between X1 and X2.
%  
% linspace(X1, X2, N) generates N points between X1 and X2.
%     For N = 1, linspace returns X2.

%Now, we shall create the variables necessary.
time1 = 0;
time2 = 100;

%Finally, let's execute the program and see what we get!

linResult = linspace(time1, time2)
%   This creates 100 variables of numbers between 0 and 100.

%The linspace function has an additional optional argument that can be
%added. This argument specifies how many values we want to be outputted.
disp('\n')
%For example...
linResult2 = linspace(time1, time2, 10)
    %This will give us 10 values between the numbers 0 and 100
