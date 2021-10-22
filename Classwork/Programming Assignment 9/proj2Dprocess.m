function [timeAirFinal2,vertPosVSTime] = proj2Dprocess(launchAngle,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel)
%PROJ2DPROCESS Takes the 2DProj inputs and makes calculations for proj2DOut
%
%   output = proj2Dprocess(launchAngle,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel)
%       takes the variables defined in proj2Dinput and calculates initial
%       horizontal and vertical velocities, total time in air, horizontal
%       distance travelled, vertical position as a function of time,
%       horizontal position as a functio nof time, and the vertical
%       velocity of the projectile as a function of time.
%
%   Input:
%   launchAngle     the launch angle (in degrees; above the horizontal)
%   launchSpeed     the launch speed in meters/sec.
%   vertAccel       the vertical acceleration in meters/sec^2. (Absolute
%                       value taken.)
%   initVertPos     the initial vertical position (in meters).
%   finalVertPos    the final vertical position (in meters).
%   signAccel       tells us whether the user's vertAccel value was
%                       positive or negative.
%   Output:
%   timeAirFinal2  Total time in air.
%   vertPosVSTime  vertical position vs time.
%   vertVelVSTime  vertical velocity vs. time.

%   Author: Fluxyl
%   Date: October 29, 2018
%   School: University of Fluxyl at Riften
%   Class: EGR Flux

narginchk(6,6)
nargoutchk(2,2)


% Convert launch angle from degrees to radians.
launchAngleRadians = launchAngle * (pi/180);

% Calculate the initial horizontal and vertical velocities.
intHorizontalVel = cos(launchAngleRadians) * launchSpeed;

intVerticalVel = sin(launchAngleRadians) * launchSpeed;

% Calculate the total time the projectile is in the air as it moves from
%   the intitial to final vertical position.

timeAirTopFirstVal = sqrt(intVerticalVel^2 *(-4)*((1/2)*vertAccel)*(initVertPos-finalVertPos));
timeAirBottom = 2*(1/2*vertAccel);
timeAirTop1 = -intVerticalVel + timeAirTopFirstVal;
timeAirTop2 = -intVerticalVel - timeAirTopFirstVal;
timeAirFinal1 = timeAirTop1/timeAirBottom;
timeAirFinal2 = timeAirTop2/timeAirBottom;

% Calculate the horizontal distance
horizontalDist = intHorizontalVel * timeAirFinal1;

% Calculate the vertical position of the projectile as a function of time.
%   (Create a vector of vertical position values between the time that it
%   is launched and the time that it lands.

vertPosVSTime = intVerticalVel + vertAccel;