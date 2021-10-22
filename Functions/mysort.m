function B = mysort(userMatrix,dim)
%MYSORT Summary of this function goes here
%   Detailed explanation goes here

% Take two user-provided values and assign A as the vector/matrix, and dim
%   as 0, 1, or 2.

B = userMatrix;
if isvector(userMatrix) == 1
    nElem = length(userMatrix);
    for iter = (1:nElem-1)
        for j = (1:nElem-iter)
            if B(j) > B(j+1)
                temp1 = B(j);
                temp2 = B(j+1);
                B(j) = temp2;
                B(j+1) = temp1;
            end
        end
    end
    
    
    % Part 2
    
elseif isvector(userMatrix) == 0
    [nRows,nCols] = size(userMatrix)
    nElem = nRows*nCols;
    colSortNum = 0;
    for rowNum = [1:nRows]
       for colNum = [1:nCols]
           if colSortNum < nCols-1 && userMatrix(rowNum,colNum) > userMatrix(rowNum,colNum+1)
               temp1 = userMatrix(rowNum,colNum);
               temp2 = userMatrix(rowNum,colNum+1); 
               userMatrix(rowNum,colNum) = temp2
               userMatrix(rowNum,colNum+1) = temp1
               colSortNum = colSortNum + 1
           end
       end
       colSortNum = 0
    end
end