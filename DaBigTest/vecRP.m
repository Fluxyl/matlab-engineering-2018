function [out1,out2] = vecRP(in1,in2,conv)
%VECRP Convert a vector from rectangular to polar, or vice versa.
%
%   [out1,out2] = vecRP(in1,in2,conv) takes the two input variables and
%       calculates either the polar components or rectangular components.
%       The input variable conv is used to switch between p2r mode and r2p
%       mode.
%
%   Input:
%   in1:        For p2r mode, this is the x-compoment. For r2p mode, this
%                   is the magnitude.
%   in2:        For p2r mode, this is the y component. For r2p mode, this
%                   is the angle of the original vector.
%   conv:       Switches between outputting in polar form or rectangular
%                   form.
%
%   Output:
%   out1           For p2r mode, this value represents the magnitude. For
%                    r2p mode, this value represents the x-component.
%   out2           For p2r mode, this value represents the angle. For r2p
%                    mode, this value represents the y-component.

%   Author: Fluxyl
%   Date: December 12, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux

narginchk(3,3);
nargoutchk(2,2);
home

% Main Error Trapping
if isnumeric(in1) == 0
    while isempty(str2num(in1)) == 1
        warning('Please input a valid number for input 1.')
        in1 = input('\nNumber: ','s');
    end
    in1 = str2num(in1);
end
if isnumeric(in2) == 0
    while isempty(str2num(in2)) == 1
        warning('Please input a valid number for input 2.')
        in2 = input('\nNumber: ','s');
    end
    in2 = str2num(in2);
end
% Error Trapping Completed

% Check to see if conv is something weird using a switch structure.
switch conv
    case 'r2p'
        % in1 and in2 are the x and y components.
        % out1 should be magnitude, and out2 should be angle.
        out1 = sqrt(in1^2 + in2^2);
        out2 = atand(in2/in1);
        if out2 < 0 && out2 > -90
            out2 = out2+180;
        elseif out2 > 0 && out2 < 90
            out2 = out2-180;
        end
    case 'p2r'
        % in1 and in2 are magnitude and angle, respectively.
        % out1 and out2 are the x and y components.
        out1 = in1*cosd(in2);
        out2 = in1*sind(in2);
    otherwise
        % Incorrect input.
        error('You did not choose a correct mode.')
end