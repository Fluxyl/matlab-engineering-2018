function outMat = matrix3p(nRows,nCols,N)
%MATRIX3P Generates a Matrix using a three part system.
%
%   outMat = matrix3p(nRows,nCols,N) returns a nRows by nCols matrix
%   containing three different sections of values. The first set is
%   composed of multiples of N. The second set is to the right of the
%   diagonal, composed of random integers between 1 and N. Finally, to the
%   left of the diagonal lies the product of the row and column index for
%   that cell.
%
%

% Pre-allocate a matrix for usage in the function.
outMat = zeros(nRows,nCols);
%
% Insert diagonal elements as multiples of N.
%   AND, make sure that elements to the right of the diagonal are random
%   integers between 1 and N, while elements to the left of the diagonal
%   are the product of the row and column index.

for i = 1:nRows
    for j = 1:nCols
        if j > i
            outMat(i,j) = randi(N);
        elseif j < i
            outMat(i,j) = i*j;
        else
            outMat(i,j) = N*i;
        end
    end
end