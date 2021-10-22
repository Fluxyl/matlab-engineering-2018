% File Name: OCL_MAT_STR
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
%         To learn about MATLAB's string functions.    
%-----Notes----------------------------------------------------------------
isletter a;
%This command tells us if an input is a letter or not. It returns a logical
%data type, which can be either true (1) or false (0).

isspace('What is your name?');
%Detects where the spaces are in a string, and returns a 1 for space, 0 for
%everything else.

isstrprop('How are you today, Mr.27-year-old?','digit');
%Detects objects from whatever category you specify in a string.

strcmp('What is my name?','What is your name?')
%Compares two strings to see if they are the same.