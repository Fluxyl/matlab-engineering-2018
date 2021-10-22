% File Name: ICL_For_While_Loop.m
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/17/2018
% Last Revised On: 09/17/2018
% 
% Purpose:
%             
% Variable List:
% 
%
%-----Input----------------------------------------------------------------
% Prompt the user for their wanted number of rows and columns for the 
%   output matrix, as well as a third integer value.
clc
clear
home
nRows = input('Please specify a number of rows for the matrix.\n: ');
nCols = input('\nPlease specify a number of columns for the matrix.\n: ');
N = input('\nFinally, please specify a third integer value for the diagonal values.\n: ');


%-----Processing-----------------------------------------------------------
% Create a blank matrix using the values from nRows and nCols.
userMatrix = zeros(nRows,nCols);

for i = 1:nRows
    for j = 1:nCols
        if j > i
            A(i,j) = randi(N);
        elseif j < i
            A(i,j) = i*j;
        else
            A(i,j) = i*N;
        end
    end
end



%-----Output---------------------------------------------------------------






%% Part 2 - While
clc
tol = 0.05;
actVal = pi^2/6;
estVal = 0;
i = 0;
while abs(estVal-actVal) > tol & i < 5000
    i = i + 1;
    estVal = estVal + 1/i^2;
    i
    estVal
    actVal

    
end

%% Part 3 - While Prompt
clc
clear
home
disp(sprintf('circle, triangle, square, pentagon, hexagon'))
dumbVal = 1;
i = 0;
while dumbVal == 1 & i < 5
    userShape = lower(input('\nPlease input a shape from the list above.\n: ','s'));

    % Detect if user is an idiot.
    switch userShape
        case {'circle','triangle','square','pentagon','hexagon'}
            clc
            disp(sprintf('\nGood job! You know how to read!'))
            dumbVal = 0;
        otherwise
            i = i + 1;
            dumbVal = 1;
            clc
            disp(sprintf('circle, triangle, square, pentagon, hexagon'))
            disp(sprintf('\nNot the smartest one, are you? Try again.')) %#ok<*DSPS>
            
    end
end