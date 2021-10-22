function y = randint(r,c,low,high)
%RANDINT    Randonmly generated matrix of integers.
%
%   Y = RANDINT(R,C,LOW,HIGH)  returns an r x c array of random integers
%           between low and high.
%   Input:
%       r       # of rows in an output array.
%       c       # of columns in output array.
%       low     lower value for range of integers.
%       high    upper value for range of integers.
%
%   Output:
%      y        r x c array of random integers between low and high.
%

%
%   Fluxyl
%   University of Courage at Nowhere
%   EGR Flux
%   22 October 2018
%

%% Error trapping: Checking the number of iunput arguments
%narginchk(4,4)

% Error trapping: Checking for correct input data typers.
% if isnumeric([r,c,low,high]) ~= [1 1 1 1]
%   error('Input numeric values for each argument.');
% end
%
% Error trapping: Checking for correct range of input arguments.
%  (Generating an error message if range is incorrect.)
% if r <= 0 || rem(r,1) ~= 0
%       error('The number of rows must be an integer greater than 0.');
% end

% Error trapping: Checking for correct range of input arguments. 
%  (Generating a warning message and resetting the argument value.)
% if r <= 0 || rem(r,1) ~= 0
%       warning('The number of rows is being reset from %3.1f to %d', r, c)
%       r = abs(fix(r));
% end
% Error trapping: Checking for correct range of input arguments.
% (Setting output to a specified value for out-of-range arguments.)
%
%
%
%
outputArg1 = inputArg1;
outputArg2 = inputArg2;
end
