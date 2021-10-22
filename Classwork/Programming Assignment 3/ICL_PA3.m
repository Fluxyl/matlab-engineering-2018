% File Name: ICL_PA3.m
% --------------------------------------------------------------------------
%% First Program - Counting Characters
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/19/2018
% Last Revised On: 09/19/2018
% 
% Purpose: Taking string input, and determining how many letters, numbers,
%          and letters are contained in the string.
%             
% Variable List:
% finalNumDigits        The final number of digits detected.
% finalNumLetters       The final number of letters detected.
% finalNumSpaces        The final number of spaces detected.
% numDigits             Stores the initial logical array for use in
%                       conversion.
% numSpaces             Stores the initial logical array for use in
%                       conversion.
% userString            The input string taken from the user.

%-----Input----------------------------------------------------------------
%Take input string from the user.
clear
disp(sprintf('\nPlease input a string of text.\t'))
userString = input(':','s');


%-----Processing-----------------------------------------------------------
%Determine the number of letters in userString.
finalNumLetters = length(isletter(userString));

%Determine the number of digits in userString.
numDigits = isstrprop(userString,'digit');
finalNumDigits = count(num2str(numDigits),'1');


%Determine the number of spaces in userString.
numSpaces = isspace(userString);
finalNumSpaces = count(num2str(numSpaces),'1');


%-----Output---------------------------------------------------------------
%Output the amount of letters.
%Output the amount of digits.
%Output the amount of spaces.

disp(sprintf('\nThere are %d letter(s), %d number(s), and %d space(s) in the provided string.',finalNumLetters,finalNumDigits,finalNumSpaces))


%-----Pseudocode-----------------------------------------------------------
%Take input string from the user.
%Determine the amount of letters.
%Determine the amount of digits.
%Determine the amount of spaces.
%Output the amount of letters.
%Output the amount of digits.
%Output the amount of spaces.


%% Program 2 - Matching String Properties
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/19/2018
% Last Revised On: 09/19/2018
% 
% Purpose: Determine the amount of elements detected that match a
%          user-specified string property.
%             
% Variable List:
% p2Conversion          The variable that the logical array for program 2
%                       calculations are stored in.
% p2NumElements         The amount of elements detected using the user's
%                       given string property.
% p2userPropety         The propety specified by the user for calculations
%                       in program 2.
% p2userString          The string provided by the user for program 2.

%-----Input----------------------------------------------------------------
%Ask user for a string.
disp(sprintf('\nPlease input a string of text for program 2.\t'))
p2userString = input(':','s');

%Ask a user for a string property.
disp(sprintf('\nNow, provide a string property that works with the function isstrprop.\t'))
p2userProperty = input(':','s');

%-----Processing-----------------------------------------------------------
%Use the provided string property in the isstrprop function to count what
%the user wants to find. Then, convert the logical array to a number by
%counting the number of 1's in the logical array.

p2Conversion = isstrprop(p2userString,p2userProperty);
p2NumElements = count(num2str(p2Conversion),'1');


%-----Output---------------------------------------------------------------
%Display the amount of elements counted, and the string property used to
%count.

disp(sprintf('\nThere were %d %s elements in the provided string.',p2NumElements,p2userProperty))


%-----Pseudocode-----------------------------------------------------------
%Ask user for a string.
%Ask a user for a string property.
%Use the provided string property in the isstrprop function to count what
%the user wants to find. Then, convert the logical array to a number by
%counting the number of 1's in the logical array.
%Display the amount of elements counted, and the string property used to
%count.

