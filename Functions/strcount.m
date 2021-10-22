function y = strcount(inString,charType)

% STRCOUNT - Counts number of elements that meet a specifed criteria.
%   Y = STRCOUNT(inString,charType) Determines the number of chracters of a
%       particular type within a given input string.
%
%   Input:
%   inString    The string inputted by the user.
%   charType    Criteria to check for.
%
%   Output:
%   y           The number of elements detected that meet the criteria.
%
%   Note: for charType, only alpha, digit, lower, punct, upper, wspace are
%         supported.
%   

%   Fluxyl
%   University of Fluxyl at Riften
%   EGR-Flux
%   October 15, 2018
%
nChar = sum(isstrprop(inString,charType))
switch charType
    case 'alpha'
    case 'digit'
    case 'lower'
    case 'punct'
    case 'upper'
    case 'wspace'
    otherwise
        error('This is not a valid argument! Try again kiddo!')
end

end
