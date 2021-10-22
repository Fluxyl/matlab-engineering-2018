% File Name: OCL_Additional_For_While.m
%% Part 1 - For loops
%-----Input----------------------------------------------------------------
disp(sprintf('Starting script!\n'))

% Ask the user to enter a matrix using a specific guideline.
disp(sprintf('Please enter a matrix using the below syntax.'))
disp(sprintf('\n[a b c d; e f g h; i j k l]'))
A = input('\nMatrix: ');
sumVal = 0;
%-----Processing-----------------------------------------------------------
if isvector(0) == 1
    for i = A
        sumVal = i + sumVal;
    end
else
    for i = A
        sumVal = i + sumVal;
    end
end

%-----Output---------------------------------------------------------------
disp(sumVal)


%% Part 2
% Prompt the user to input a number.
clear
clc
home
userNum = input('Please input a number.\n: ','s');
i = 1;
while isstrprop(userNum,'digit') == 1 & i < 1000
    userNum = str2num(userNum);
    userVector(i) = userNum
    % Prompt user to enter in another number.
    userNum = input('\nPlease enter in another number. Don''t enter anything when you are done.\n: ','s');
    home
    i = i + 1;
end
totalNumbersEntered = i - 1;

totalVal = 0;
for i = userVector
    totalVal = totalVal + i;
end

meanTotal = totalVal/totalNumbersEntered;

disp(sprintf('\nThe total average of all %d numbers entered is %g.',totalNumbersEntered,meanTotal))