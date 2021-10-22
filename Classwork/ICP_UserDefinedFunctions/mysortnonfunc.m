home
A = [1984 2 83 95 1 ]
B = A;

% First, determine the number of elements in the vector
nElem = length(A);

% Then, setup for loop that iterates nElem-1 times.
clc
clear
home
B = A;
nElem = length(A);
for iter = [1:nRows-1]
    for j = [1:nElem-iter]
        if A(j) > A(j+1)
            temp1 = A(j);
            temp2 = A(j+1);
            A(j) = temp2;
            A(j+1) = temp1
        end
    end
end