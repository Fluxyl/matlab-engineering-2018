function [launchAngle,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel] = proj2Dinput(input1)
%PROJ2DINPUT Obtains the necessary values from the user in order to run proj2DProcess.
%
%   [launchAng,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel] = proj2Dinput(input1)
%   asks the user for the above specified values and stores them in the
%   outputted variables as declared by the user. 
%
%
%   Output:
%   launchAngle       the launch angle (in degrees; above the horizontal)
%   launchSpeed     the launch speed in meters/sec.
%   vertAccel       the vertical acceleration in meters/sec^2. (Absolute
%                       value taken.)
%   initVertPos     the initial vertical position (in meters).
%   finalVertPos    the final vertical position (in meters).
%   signAccel       tells us whether the user's vertAccel value was
%                       positive or negative.

%   Author: Fluxyl
%   Date: October 29, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux

nargoutchk(6,6)

% Ask the user for the launch angle (in degrees; above the horizontal).
launchAngle = input('\nPlease input the launch angle that is above the horizontal. (in degrees)\n: ');

% Ask the user for the launch speed in meters/sec.
launchSpeed = input('\nPlease specify the launch speed in meters/sec.\n: ');

% Ask the user for the vertical acceleration in meters/sec^2.
%   Take absolute value of this value.
vertAccel = input('\nNext, input the vertical acceleration in meters/sec^2\n: ');

if vertAccel > 0
    signAccel = 1;
elseif vertAccel < 0
    signAccel = -1;
    vertAccel = abs(vertAccel);
else
    disp('You entered in an incorrect value.')
end
% Ask the user for the initial vertical position (in meters)
initVertPos = input('\nWhat is the value for the initial vertical position? (In meters)\n: ');

% Ask the user for the final vertical position (in meters)
finalVertPos = input('\nWhat is the final value for the vertical position? (In meters)\n: ');

