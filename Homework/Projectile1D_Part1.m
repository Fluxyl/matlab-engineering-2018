%Filename:  Projectile1D_Part1.m
%--------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% University of Courage at Nowhere
% Dr. Eggman
%
% Start Date: 09/05/18
% Last Revised on: 09/05/18
%
% Purpose: Kinematic model of an object moving in one dimension with a
%          constant acceleration.
%
% Variables: 
%   a       acceleration (m/s^2)
%   t       total time (s)
%   vf      final velocity (m/s)
%   vi      initial velocity (m/s)
%   xf      final position (m)
%   xi      initial position (m)
%
% Functions called:     (beyond built-in functions)
%   None
%
%--------------------------------------------------------------------------
% Begin script
% Input
%1.     Prompt user for initial position (with specified units).
%2.     Prompt user for initial velocity (with specified units).
%3.     Prompt user for the acceleration (with specified units).
%4.     Prompt user for the total time of motion (with specified units).
% Process
%5.     xf = xi + vi*t + 0.5*a*t^2
%6.     vf = vi + a*t
% Output
%7.     Display the final position (with units) to the user.
%8.     Display the final velocity (with units) to the user.

% Acquire Input
xi = input('Input the initial position (in meters).    ');
vi = input('Input the initial velocity (in meters/sec).    ');
a = input('Input the acceleration (in meters/sec^2).    ');
t = input('Input the total time (in sec).    ');

% Calculate the final position and velocity.
xf = xi + vi*t + 0.5*a*t^2;
vf = vi + a*t;

% Display output values.
disp(sprintf('\nThe output values for this set of parameters is:'))
disp(sprintf('\tThe final position is %f meters.',xf))
disp(sprintf('\tThe final velocity is %f meters/sec.',vf))
