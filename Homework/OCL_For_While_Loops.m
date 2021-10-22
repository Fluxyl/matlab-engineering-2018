%% Loop #1
x = ones(20,1);
for i = 2:20
    x(i) = i*x(i-1);
end

% What is the purpose of the first line?
%   The purpose of the first line is to create the vector for use in the
%   for loop. It could also serve as a reminder that we should allocate our
%   vectors and matrices if possible to reduce load time.

% How many times does the for loop iterate?
%   The for loop runs a total of 19 times, since there are 19 numbers
%   between 2 and 20, including 2 and 20.

% Explain what is happening during the assignment statement on the 3rd line
%   Basically, on line 3, x(i placeholder) is telling the program to insert
%   the calculated value into the numerical representation for the current
%   iteration that the loop is on.

% What is the final value of the vector x?
%   The final values for x are mostly all the previous value, times the
%   current iteration counter value.

%% Loop 2
a = [3 6 9 11 15 20 25 30];
count = 1;
newVal = 1;
for i = a
    a(count) = i^2;
    count = count + 1;
    newVal = newVal*i;
end

% what is the purpose of the 2nd and 3rd lines?
%   The purpose of the second line is to assign a vector named a.
%   The purpose of the third line is to keep a counter active to tell us
%   how many times the program has been run.
% How many times will the for loop iterate?
%   The for loop will iterate a total of 8 times, since there are only 8
%   values in the vector a.
%   Explain what is happening during the assignment statement on the 5th,
%   6th, and 7th lines.
%       On the 5th line, the vector a is having position (countVal) be
%       multiplied by itself. 
%       On the 6th line, the count value is being increased by 1 to
%       showcase how many times hte program has run. (Subtract 1 to obtain
%       the total amount of times the program ran.)
%       On the 7th line, newVal is the value that is being multiplied by
%       each number in the vector a.
%   What is the final value for newVal? fora? For count?
%       Figure it out yourself. Why would you ask me that? It's literately
%       right there in the workspace...

%% Loop 3
icount = 0;
jcount = 0;
for i = 1:7
    for j = 2:2:8
        a(i,j) = i + j;
        disp(a)
        jcount = jcount + 1;
    end
    icount = icount + 1;
end

% What are the final values of icount and jcount?
%   The final value for jcont would be 28, since it ran a total of 28
%   times, while icount would be 7 since it ran 7 times.
% How many times will array a be displayed in the Command Window?
%   28 times.
% What is the final dimension of array a?
%   The final dimension would be a 7x8 array.
% Assuming that a is not pre-allocated, how many times will MATLAB have to
% resize the array?
%   MATLAB will have to resize the array 28 times. Pre-allocating a would
%   make this program run smoother.

incUp = 2;
incDown = 100;
iRow = 1
while incUp <= incDown
    trackVals(iRow,:) = [incUp, incDown];
    incUp = incUp + incDown/10;
    incDown = incDown -incUp;
    iRow = iRow + 1;
end

% What are the final values of incUp, incDown, and iRow?
%   The final value of incDown is 8.1920
%   The final value of incUp is 31.4880
%   The final value of iRow is 5
% What is the final dimension of trackVals?
%   4x2 is the final dimension.
% Assuming that trackVals is not pre-allocated, how many times will MATLAB
% have to resize the array?
%   trackVals had to be resized 5 times.

%% Loop 4
clc
x = 0;
loopNum = 1;
y = 0;
while y < 1
    x = x + .25
    y = -5*sin(x./(4*pi))-1;
    loopNum = loopNum + 1;
end
