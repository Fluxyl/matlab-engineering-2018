% File Name: ICL_PA2r2.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 09/17/2018
% Last Revised On: 09/17/2018
% 
% Purpose: Model two-dimensional projectile motion.
%             
% Variable List:
% 
%
%-----Input----------------------------------------------------------------

% Ask the user for the launch angle (in degrees; above the horizontal).
launchAngle = input('\nPlease input the launch angle that is above the horizontal. (in degrees)\n: ');

% Ask the user for the launch speed in meters/sec.
launchSpeed = input('\nPlease specify the launch speed in meters/sec.\n: ');

% Ask the user for the vertical acceleration in meters/sec^2.
%   Take absolute value of this value, and figure out if the value is
%   negative or positive.
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
initialVertPosition = input('\nWhat is the value for the initial vertical position? (In meters)\n: ');

% Ask the user for the final vertical position (in meters)
finalVertPosition = input('\nWhat is the final value for the vertical position? (In meters)\n: ');

%-----Processing-----------------------------------------------------------
% Convert launch angle from degrees to radians.
launchAngleRadians = launchAngle * (pi/180);

% Calculate the initial horizontal and vertical velocities.
intHorizontalVel = cos(launchAngleRadians) * launchSpeed;

intVerticalVel = sin(launchAngleRadians) * launchSpeed;

% Calculate the total time the projectile is in the air as it moves from
%   the intitial to final vertical position.

timeAirTopFirstVal = sqrt(intVerticalVel^2 *(-4)*((1/2)*vertAccel)*(initialVertPosition-finalVertPosition));
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

vertPos = intVerticalVel + vertAccel;


%-----Output---------------------------------------------------------------


disp(sprintf('The total time in the air is %g minutes.',timeAirFinal1))

