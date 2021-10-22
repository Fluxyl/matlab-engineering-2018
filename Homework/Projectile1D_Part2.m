%Filename:  Projectile1D_Part2.m
%--------------------------------------------------------------------------
% Fluxyl
% Engineering Computations with MATLAB
% University of Courage at Nowhere
% Dr. Eggman
%
% Start Date: 09/05/18
% Last Revised on: 09/13/18
%
% Purpose: Kinematic model of an object moving in one dimension with a
%          constant acceleration.
%
% Variables: 
%   a       acceleration (m/s^2)
%   t1
%   t2
%   vf      final velocity (m/s)
%   v      initial velocity (m/s)
%   xf      final position (m)
%   x      initial position (m)
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
%5.     Prompt user for the value of time 1 (with specified units).
%6.     Prompt user for the value of time 2 (with specified units).
%7.     Create a vector of time with values between time 1 and time 2.
%8.     Vectorize equations
% Process
%5.     xf = xi + vi*t + 0.5*a*t^2
%6.     vf = vi + a*t
% Output
%7.     Display the final position (with units) to the user.
%8.     Display the final velocity (with units) to the user.

clear all

% Acquire Input
x = input('Input the initial position (in meters).    ');
v = input('Input the initial velocity (in meters/sec).    ');
a = input('Input the acceleration (in meters/sec^2).    ');
t1 = input('Input the value for t1 (in sec).    ');
t2 = input('Input the value for t2 (in sec).    ');

% Calculate the final position and velocity.
t = linspace(t1, t2);
xf = x + v*t + 0.5*a*t.^2;
vf = v + a*t;

% Display output values.
% disp(sprintf('\nThe output values for this set of parameters is:'))
% disp(sprintf('\tThe final position is %f meters.',xf))
% disp(sprintf('\tThe final velocity is %f meters/sec.',vf))

