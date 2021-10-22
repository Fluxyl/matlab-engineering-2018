% File Name: ICL_PA9.mat
% --------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% MATLAB for Engineering
% {Teacher name removed for privacy}
% 
% Start Date: 10/29/2018
% Last Revised On: 10/29/2018
% 
% Purpose: Model two-dimensional projectile motion script that calls three
%               different functions to calculate the total time in the air,
%               and displayus a plot of the vertical position vs. time and 
%               the vertical velocity vs. time.
%             
% Variable List:
%   launchAngle     the launch angle (in degrees; above the horizontal)
%   launchSpeed     the launch speed in meters/sec.
%   vertAccel       the vertical acceleration in meters/sec^2. (Absolute
%                       value taken.)
%   initVertPos     the initial vertical position (in meters).
%   finalVertPos    the final vertical position (in meters).
%   signAccel       tells us whether the user's vertAccel value was
%                       positive or negative.
%   timeAirFinal2  Total time in air.
%   vertPosVSTime  vertical position vs time.
%   vertVelVSTime  vertical velocity vs. time.
%
%-----Input----------------------------------------------------------------
% Launch function 1 to gather the input variables.
[launchAngle,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel] = proj2Dinput;

%-----Processing-----------------------------------------------------------
% Launch function 2 to calculate the values that we need.
[timeAirFinal2,vertPosVSTime] = proj2Dprocess(launchAngle,launchSpeed,vertAccel,initVertPos,finalVertPos,signAccel);

%-----Output---------------------------------------------------------------
% Launch function 3 to display the total time in air, and present the plot.
home
blankoutput = proj2Doutput(timeAirFinal2,vertPosVSTime);