function B = Fluxylcprod(A,dim)
%Fluxylcprod A recreation of the cumprod function.
%
%   outputMatrix = Fluxylcprod(A,dim) Recreate the cumprod function by
%               replicating the internals of how the program works.
%
%   Input:
%   A       Holds the array provided by the user.
%   dim     The dimension for use with matrices.
%
%   Output:
%   B      The resulting matrix after all calculations have been done.

%   Author: Fluxyl
%   Date: October 17, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux



%!!!!!!!!!!!!!!!!!!
% PLEASE SET DIM TO 1, as 0 and 2 haven't been fully developed!
% Dim 1 isn't fully developed either, but it's as close as I can get
%   within the time limit!
%!!!!!!!!!!!!!!!!!!



% Detect if A is a vector or a matrix.
if isvector(A) == 1
    % Pre-allocate the vector for use in calculations.
    B = zeros(size(A));
    
    % Detect the number of elements in the vector
    numElements = length(A);
    
    % Begin the processing stage.
    %   Calculate the prod of one position and the position after that.
    %       and store it in the new array at the correct position.
    iter = 0
    for position = [1:numElements]
        if position ~= numElements(end)
            if iter == 0
                B(position) = A(1)
                iter = iter + 1;
            end
            tempVec = A;
            
            B(position+1) = prod(A(1:position)) * tempVec(position+1)
        end
    end
    
else
    % Pre-allocate the matrix for use in calculations.
    B = zeros(size(A));
    iter = 0
    
    % Store the size values of the matrix.
    [numRows,numCols] = size(A);
    
    
    % Detect the number of elements in the matrix.
    numElements = numRows*numCols;
    
    % Begin the processing stage.
    %   First, seperate this processing stage into three different seperate
    %       programs that are chosen based off the dim value.
    
    
    switch dim
        case 1 % Cumulative product along each row.
            
            % Begin the for loop that will switch the function to the next
            %   row
            for positionRow = [1:numRows]
                for positionCol = [1:numCols]
                    if iter == 0
                        B(positionRow,positionCol) = A(positionRow,positionCol)
                        iter = iter + 1;
                        tempVec = A(positionRow,:);
                    end
                    if positionCol ~= numCols(end)
                        B(positionRow,positionCol+1) = prod(A(positionRow,1:positionCol)) * tempVec(positionCol+1)
                    end
                end
                iter = 0
            end
            
        case 2 % Simply output the value calculated column-wise. IN-PROGRESS
            for positionRow = [1,numRows]
                for positionCol = [1,numCols]
                    if iter == 0
                        B(positionRow,positionCol) = A(positionRow,positionCol)
                        iter = iter + 1;
                        tempVec = A(positionRow,:);
                    end
                    B(positionRow,positionCol+1) = prod(A(positionRow,1:positionCol)) * tempVec(positionCol+1)
                end
            end
        case 0 % Cumulative product along each column. IN-PROGRESS
            for positionRow = [1,numRows]
                for positionCol = [1,numCols]
                    if iter == 0
                        B(positionRow,positionCol) = A(positionRow,positionCol)
                        iter = iter + 1;
                        tempVec = A(positionRow,:);
                    end
                    B(positionRow,positionCol+1) = prod(A(positionRow,1:positionCol)) * tempVec(positionCol+1)
                end
            end
            
    end
end
